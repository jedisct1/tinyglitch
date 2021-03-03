const std = @import("std");
const math = std.math;
const mem = std.mem;
const av = @cImport({
    @cInclude("libavcodec/avcodec.h");
    @cInclude("libavformat/avformat.h");
    @cInclude("libavutil/avutil.h");
});
const fs = std.fs;
const heap = std.heap;

const AVFormatContext = av.AVFormatContext;
const AVCodecContext = av.AVCodecContext;
const AVCodec = av.AVCodec;
const AVPacket = av.AVPacket;
const AVRational = av.AVRational;

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
        return self.data;
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

pub fn main() anyerror!void {
    const input_file = "in.mp4";
    const out_file = "out.mp4";
    const allocator = heap.page_allocator;

    av.av_register_all();

    // Read the input file

    var in_data = try fs.cwd().readFileAlloc(allocator, input_file, 50 * 1024 * 1024);
    defer allocator.free(in_data);

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
    if (av.avformat_open_input(&format_ctx, "", null, null) != 0) {
        return error.InternalError;
    }
    defer av.avformat_close_input(&format_ctx);

    // Create a buffered writer for libavformat

    const out_buffer_size = mem.page_size;
    var out_data = try allocator.alloc(u8, in_data.len);
    var buffered_writer = AVBufferedWriter{ .data = out_data, .allocator = allocator, .buffer = @ptrCast([*c]u8, av.av_malloc(out_buffer_size).?) };
    defer buffered_writer.deinit();
    const avio_out_ctx = av.avio_alloc_context(buffered_writer.buffer, out_buffer_size, 1, &buffered_writer, null, AVBufferedWriter.write_buffer, AVBufferedWriter.seek);
    if (avio_out_ctx == null) {
        return error.InternalError;
    }
    defer _ = av.av_free(avio_out_ctx);
    var out_format_ctx: [*c]AVFormatContext = null;
    if (av.avformat_alloc_output_context2(&out_format_ctx, null, "mp4", out_file) != 0) {
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
    av.av_dump_format(out_format_ctx, 0, out_file, 1);
    if (av.avformat_write_header(out_format_ctx, null) != 0) {
        return error.WriteError;
    }

    // Copy frames, watermarking key frames

    var packet: AVPacket = undefined;
    while (av.av_read_frame(format_ctx, &packet) == 0) {
        defer av.av_packet_unref(&packet);
        const data = packet.data[0..@intCast(usize, packet.size)];
        if (packet.stream_index != video_stream_idx) {
            std.debug.print("ignored (stream idx)\n", .{});
            continue;
        } else if (packet.flags == av.AVINDEX_KEYFRAME) {
            std.debug.print("key frame\n", .{});
            const glitch = "*";
            mem.copy(u8, packet.data[data.len - glitch.len .. data.len], glitch);
        }
        if (av.av_interleaved_write_frame(out_format_ctx, &packet) != 0) {
            return error.WriteError;
        }
    }

    // Finalization

    if (av.av_write_trailer(out_format_ctx) != 0) {
        return error.WriteError;
    }
    try fs.cwd().writeFile(out_file, buffered_writer.bytes());
}
