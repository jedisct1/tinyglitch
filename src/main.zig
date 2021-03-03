const std = @import("std");
const SipHash = std.crypto.auth.siphash.SipHash64(2, 4);
const Kdf = std.crypto.kdf.hkdf.HkdfSha256;
const math = std.math;
const mem = std.mem;
const av = @import("ffmpeg.zig");
const fs = std.fs;
const heap = std.heap;
const zigly = @import("zigly/lib.zig");

const AVFormatContext = av.AVFormatContext;
const AVCodecContext = av.AVCodecContext;
const AVCodec = av.AVCodec;
const AVPacket = av.AVPacket;
const AVRational = av.AVRational;

const watermark_key = "Watermark Secret";

extern var errno: c_int;

const AVBufferedReader = struct {
    buffer: [*c]u8 = null,
    data: []u8,
    pos: usize = 0,

    fn read_buffer(c_self: ?*c_void, c_buf: [*c]u8, c_buf_len: c_int) callconv(.C) c_int {
        var self = @intToPtr(*AVBufferedReader, @ptrToInt(c_self));
        if (self.pos >= self.data.len) {
            return -1;
        }
        var buf: []u8 = c_buf[0..@intCast(usize, c_buf_len)];
        const len = math.min(self.data.len - self.pos, buf.len);
        mem.copy(u8, buf, self.data[self.pos..][0..len]);
        self.pos += len;
        return @intCast(c_int, len);
    }

    fn seek(c_self: ?*c_void, offset: i64, whence: c_int) callconv(.C) i64 {
        var self = @intToPtr(*AVBufferedReader, @ptrToInt(c_self));
        if (whence == av.AVSEEK_SIZE) {
            return @intCast(i64, self.data.len);
        }
        self.pos = @intCast(usize, offset);
        return offset;
    }
};

const AVBufferedWriter = struct {
    buffer: [*c]u8 = null,
    allocator: *mem.Allocator,
    data: []u8,
    pos: usize = 0,

    fn deinit(self: *AVBufferedWriter) void {
        self.allocator.free(self.data);
    }

    fn bytes(self: *const AVBufferedWriter) []const u8 {
        return self.data[0..self.pos];
    }

    fn write_buffer(c_self: ?*c_void, c_buf: [*c]u8, c_buf_len: c_int) callconv(.C) c_int {
        var self = @intToPtr(*AVBufferedWriter, @ptrToInt(c_self));
        const buf: []u8 = c_buf[0..@intCast(usize, c_buf_len)];
        const required_len = self.pos + @intCast(usize, buf.len);
        if (self.data.len < required_len) {
            self.data = self.allocator.realloc(self.data, required_len) catch return -1;
        }
        mem.copy(u8, self.data[self.pos..][0..buf.len], buf);
        self.pos += buf.len;
        return c_buf_len;
    }

    fn seek(c_self: ?*c_void, offset: i64, whence: c_int) callconv(.C) i64 {
        var self = @intToPtr(*AVBufferedWriter, @ptrToInt(c_self));
        self.pos = @intCast(usize, offset);
        return offset;
    }
};

fn start() !void {
    const allocator = heap.page_allocator;
    av.av_register_all();

    try zigly.compatibilityCheck();

    // Key derivation
    const prk = Kdf.extract("watermark", watermark_key);
    var prf_key: [SipHash.key_length]u8 = undefined;
    Kdf.expand(&prf_key, "prf key", prk);
    const prf = SipHash.init(&prf_key);

    // Read the input data
    var downstream = try zigly.downstream();
    var request = downstream.request;
    if (!try request.isPost()) {
        var response = downstream.response;
        try response.setStatus(401);
        try response.body.writeAll("Use POST");
        try response.flush();
        return;
    }
    const in_data = try request.body.readAll(allocator);
    defer allocator.free(in_data);
    std.debug.print("input size: {d}\n", .{in_data.len});
    std.debug.print("input start: {s}\n", .{std.fmt.fmtSliceHexLower(in_data[0..16])});
    std.debug.print("input end: {s}\n", .{std.fmt.fmtSliceHexLower(in_data[in_data.len - 16 ..])});

    // Create a buffered reader for libavformat

    const in_buffer_size = mem.page_size;
    var buffered_reader = AVBufferedReader{ .data = in_data, .buffer = @ptrCast([*c]u8, av.av_malloc(in_buffer_size).?) };
    const avio_in_ctx = av.avio_alloc_context(buffered_reader.buffer, in_buffer_size, 0, &buffered_reader, AVBufferedReader.read_buffer, null, AVBufferedReader.seek);
    if (avio_in_ctx == null) {
        return error.InternalError;
    }
    var format_ctx = av.avformat_alloc_context();
    if (format_ctx == null) {
        return error.InternalError;
    }
    defer av.av_free(format_ctx);
    format_ctx.*.pb = avio_in_ctx;
    format_ctx.*.flags = av.AVFMT_FLAG_CUSTOM_IO;
    const avformat_open_ret = av.avformat_open_input(&format_ctx, "file:///tmp/dummy.mp4", null, null);
    if (avformat_open_ret != 0) {
        std.debug.print("avformat_open() returned {d}\n", .{avformat_open_ret});
        std.debug.print("errno={d}\n", .{errno});
        var response = downstream.response;
        try response.setStatus(500);
        try response.body.writeAll("avformat_open() failed");
        try response.flush();
        return;
    }
    defer av.avformat_close_input(&format_ctx);

    // Create a buffered writer for libavformat

    const out_buffer_size = mem.page_size;
    var out_data = try allocator.alloc(u8, 2 * in_data.len);
    var buffered_writer = AVBufferedWriter{ .data = out_data, .allocator = allocator, .buffer = @ptrCast([*c]u8, av.av_malloc(out_buffer_size).?) };
    defer buffered_writer.deinit();
    const avio_out_ctx = av.avio_alloc_context(buffered_writer.buffer, out_buffer_size, 1, &buffered_writer, null, AVBufferedWriter.write_buffer, AVBufferedWriter.seek);
    if (avio_out_ctx == null) {
        return error.InternalError;
    }
    defer _ = av.av_free(avio_out_ctx);
    var out_format_ctx: [*c]AVFormatContext = null;
    if (av.avformat_alloc_output_context2(&out_format_ctx, null, "mp4", "file:///tmp/dummy.mp4") != 0) {
        return error.WriteError;
    }
    out_format_ctx.*.pb = avio_out_ctx;
    out_format_ctx.*.flags = av.AVFMT_FLAG_CUSTOM_IO;

    // Fetch stream information

    if (av.avformat_find_stream_info(format_ctx, null) != 0) {
        return error.NoStreamInfo;
    }
    const nb_streams = format_ctx.*.nb_streams;
    var i: usize = 0;
    while (i < nb_streams) : (i += 1) {
        const in_stream = format_ctx.*.streams[i].*;
        const out_stream = av.avformat_new_stream(out_format_ctx, in_stream.codec.*.codec);
        if (out_stream == null) {
            return error.ParseError;
        }
        if ((out_format_ctx.*.oformat.*.flags & av.AVFMT_GLOBALHEADER) != 0) {
            out_stream.*.codec.*.flags |= av.AV_CODEC_FLAG_GLOBAL_HEADER;
        }
        if (av.avcodec_parameters_copy(out_stream.*.codecpar, in_stream.codecpar) != 0) {
            return error.ParseError;
        }
    }
    i = 0;
    const video_stream_idx = video_stream_idx: {
        while (i < nb_streams) : (i += 1) {
            if (@enumToInt(format_ctx.*.streams[i].*.codec.*.codec_type) == av.AVMEDIA_TYPE_VIDEO) {
                break :video_stream_idx i;
            }
        }
        return error.NoVideoStream;
    };

    // Copy the input stream metadata to the output stream

    const in_video_stream = format_ctx.*.streams[video_stream_idx];
    const out_video_stream = out_format_ctx.*.streams[video_stream_idx];
    out_video_stream.*.r_frame_rate = in_video_stream.*.r_frame_rate;
    out_video_stream.*.time_base = in_video_stream.*.time_base;
    out_video_stream.*.duration = in_video_stream.*.duration;
    out_video_stream.*.start_time = in_video_stream.*.start_time;
    out_video_stream.*.nb_frames = in_video_stream.*.nb_frames;
    out_video_stream.*.metadata = in_video_stream.*.metadata;
    out_video_stream.*.attached_pic = in_video_stream.*.attached_pic;
    av.av_dump_format(out_format_ctx, 0, "file:///tmp/dummy.mp4", 1);
    if (av.avformat_write_header(out_format_ctx, null) != 0) {
        return error.WriteError;
    }

    // Copy frames, watermarking key frames

    var packet: AVPacket = undefined;
    var keyframe_idx: u32 = 0;
    while (av.av_read_frame(format_ctx, &packet) == 0) {
        defer av.av_packet_unref(&packet);
        const data: []u8 = packet.data[0..@intCast(usize, packet.size)];
        if (packet.stream_index != video_stream_idx) {
            continue;
        } else if (packet.flags == av.AVINDEX_KEYFRAME) {
            var prfx = prf;
            prfx.update(&mem.toBytes(keyframe_idx));
            const glitch = @truncate(u8, prfx.finalInt());
            data[data.len - 1] = glitch;
            std.debug.print("glitching key frame {d} with {d}\n", .{ keyframe_idx, glitch });
            keyframe_idx += 1;
        }
        if (av.av_interleaved_write_frame(out_format_ctx, &packet) != 0) {
            return error.WriteError;
        }
    }

    // Finalization
    if (av.av_write_trailer(out_format_ctx) != 0) {
        return error.WriteError;
    }
    var response = downstream.response;
    try response.headers.set("Content-Type", "video/mp4");
    try response.body.writeAll(buffered_writer.bytes());
    try response.flush();
}

pub export fn _start() callconv(.C) void {
    start() catch unreachable;
}
