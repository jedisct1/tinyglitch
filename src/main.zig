// https://github.com/leandromoreira/ffmpeg-libav-tutorial#transcoding
// ffmpeg -i in.mp4 -c copy -tag:v hvc1 -movflags frag_keyframe+empty_moov -f mp4 in-frag.mp4
// ffmpeg -i 4k.mp4 -tag:v hvc1 -movflags frag_keyframe+empty_moov  -c:v libx265 -c:a aac -preset medium -an -ss 0 -t 60 4k-h265.mp4

const std = @import("std");
const SipHash = std.crypto.auth.siphash.SipHash64(2, 4);
const Kdf = std.crypto.kdf.hkdf.HkdfSha256;
const math = std.math;
const mem = std.mem;
const av = @cImport({
    @cInclude("libavcodec/avcodec.h");
    @cInclude("libavformat/avformat.h");
    @cInclude("libavutil/avutil.h");
    @cInclude("libavutil/opt.h");
});
const fs = std.fs;
const heap = std.heap;

const AVDictionary = av.AVDictionary;
const AVFormatContext = av.AVFormatContext;
const AVCodecContext = av.AVCodecContext;
const AVCodec = av.AVCodec;
const AVFrame = av.AVFrame;
const AVPacket = av.AVPacket;
const AVRational = av.AVRational;
const AVStream = av.AVStream;

const input_file = "in.mp4";
const out_file = "out.mp4";
const watermark_key = "Watermark Secret";

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

pub fn main() anyerror!void {
    var gpa = heap.GeneralPurposeAllocator(.{ .safety = true }){};
    var allocator = &gpa.allocator;
    av.av_register_all();

    // Key derivation

    const prk = Kdf.extract("watermark", watermark_key);
    var prf_key: [SipHash.key_length]u8 = undefined;
    Kdf.expand(&prf_key, "prf key", prk);
    const prf = SipHash.init(&prf_key);

    // Read the input file

    var in_data = try fs.cwd().readFileAlloc(allocator, input_file, 1024 * 1024 * 1024);
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
    format_ctx.*.flags |= av.AVFMTCTX_UNSEEKABLE | av.AVFMT_FLAG_AUTO_BSF;
    format_ctx.*.strict_std_compliance = -1;
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

    // Fetch stream information

    if (av.avformat_find_stream_info(format_ctx, null) != 0) {
        return error.NoStreamInfo;
    }

    const nb_streams = format_ctx.*.nb_streams;
    var in_stream: *AVStream = undefined;
    var i: usize = 0;
    while (i < nb_streams) : (i += 1) {
        in_stream = format_ctx.*.streams[i];
        if (@enumToInt(in_stream.codec.*.codec_type) == av.AVMEDIA_TYPE_VIDEO) {
            break;
        }
        std.debug.print("Skipping non-video codec\n", .{});
    }
    if (i >= nb_streams) {
        return error.VideoStreamNotFound;
    }
    const decoder = av.avcodec_find_decoder(in_stream.codecpar.*.codec_id) orelse return error.UnsupportedCodec;
    var decoder_ctx = av.avcodec_alloc_context3(decoder);
    if (av.avcodec_parameters_to_context(decoder_ctx, in_stream.codecpar) != 0) {
        return error.ParametersContextFailed;
    }
    if (av.avcodec_open2(decoder_ctx, decoder, null) != 0) {
        return error.AvCodecOpen2Failed;
    }

    //

    var frame_rate = av.av_guess_frame_rate(format_ctx, in_stream, null);
    if (frame_rate.den == 0) {
        frame_rate.den = 1;
    }
    std.debug.print("Estimated frame rate: {d}\n", .{frame_rate});

    //

    var out_format_ctx: [*c]AVFormatContext = null;
    if (av.avformat_alloc_output_context2(&out_format_ctx, null, null, out_file) != 0) {
        return error.WriteError;
    }
    out_format_ctx.*.pb = avio_out_ctx;
    out_format_ctx.*.flags = av.AVFMT_FLAG_CUSTOM_IO;
    out_format_ctx.*.flags |= av.AVFMTCTX_UNSEEKABLE | av.AVFMT_FLAG_AUTO_BSF;
    out_format_ctx.*.strict_std_compliance = -1;

    //

    const encoder = av.avcodec_find_encoder(@intToEnum(av.AVCodecID, av.AV_CODEC_ID_HEVC)) orelse return error.CodecNotFound;

    //

    const out_stream = av.avformat_new_stream(out_format_ctx, encoder);
    if (out_stream == null) {
        return error.ParseError;
    }
    if (av.avcodec_parameters_copy(out_stream.*.codecpar, in_stream.codecpar) != 0) {
        return error.ParseError;
    }
    if ((out_format_ctx.*.oformat.*.flags & av.AVFMT_GLOBALHEADER) != 0) {
        out_stream.*.codec.*.flags |= av.AV_CODEC_FLAG_GLOBAL_HEADER;
    }

    //

    // const encoder = av.avcodec_find_encoder_by_name("libaom-av1") orelse return error.CodecNotFound;
    var encoder_ctx = av.avcodec_alloc_context3(encoder) orelse return error.CodecNotFound;
    _ = av.av_opt_set_int(encoder_ctx.*.priv_data, "cpu-used", 5, 0);
    _ = av.av_opt_set(encoder_ctx.*.priv_data, "preset", "medium", 0);
    encoder_ctx.*.height = decoder_ctx.*.height;
    encoder_ctx.*.width = decoder_ctx.*.width;
    encoder_ctx.*.sample_aspect_ratio = decoder_ctx.*.sample_aspect_ratio;
    if (decoder.*.pix_fmts != null) {
        encoder_ctx.*.pix_fmt = decoder.*.pix_fmts[0];
    } else {
        encoder_ctx.*.pix_fmt = decoder_ctx.*.pix_fmt;
    }
    encoder_ctx.*.bit_rate = decoder_ctx.*.bit_rate;
    encoder_ctx.*.rc_buffer_size = decoder_ctx.*.rc_buffer_size;
    encoder_ctx.*.rc_min_rate = decoder_ctx.*.rc_min_rate;
    encoder_ctx.*.rc_max_rate = decoder_ctx.*.rc_max_rate;
    encoder_ctx.*.time_base = av.av_inv_q(frame_rate);
    out_stream.*.time_base = encoder_ctx.*.time_base;

    if (av.avcodec_open2(encoder_ctx, encoder, null) != 0) {
        return error.OutputCodecOpenError;
    }
    if (av.avcodec_parameters_from_context(out_stream.*.codecpar, encoder_ctx) != 0) {
        return error.OutputCodecParameters;
    }

    // HVC1
    out_stream.*.codecpar.*.codec_tag = 0x31637668;

    //

    av.av_dump_format(out_format_ctx, 0, out_file, 1);

    // Copy the input stream metadata to the output stream
    out_stream.*.r_frame_rate = in_stream.*.r_frame_rate;
    out_stream.*.time_base = in_stream.*.time_base;
    out_stream.*.duration = in_stream.*.duration;
    out_stream.*.start_time = in_stream.*.start_time;
    out_stream.*.metadata = in_stream.*.metadata;
    out_stream.*.attached_pic = in_stream.*.attached_pic;

    var options: ?*AVDictionary = null;
    if (av.av_dict_set(&options, "movflags", "frag_keyframe", 0) != 0) {
        return error.OptionsFailed;
    }
    if (av.avformat_write_header(out_format_ctx, &options) != 0) {
        return error.WriteError;
    }

    // Copy frames, watermarking key frames

    var packet: *AVPacket = av.av_packet_alloc();
    var frame: *AVFrame = av.av_frame_alloc();
    var keyframe_idx: u32 = 0;
    const av_again = -std.os.EAGAIN;
    while (av.av_read_frame(format_ctx, packet) >= 0) {
        defer av.av_packet_unref(packet);
        var in_frame_status = av.avcodec_send_packet(decoder_ctx, packet);
        while (in_frame_status >= 0) {
            defer av.av_frame_unref(frame);
            in_frame_status = av.avcodec_receive_frame(decoder_ctx, frame);
            if (in_frame_status == av_again or in_frame_status == av.AVERROR_EOF) {
                break;
            }
            if (in_frame_status < 0) {
                std.debug.print("ERROR\n", .{});
                break;
            }

            std.debug.print("Received frame {d}x{d} pts={d} dst={d} keyframe={d}\n", .{ frame.width, frame.height, frame.pts, frame.pkt_dts, frame.key_frame });

            //

            var out_packet: [*c]AVPacket = av.av_packet_alloc();
            defer {
                av.av_packet_unref(out_packet);
                av.av_packet_free(&out_packet);
            }
            var out_frame_status = av.avcodec_send_frame(encoder_ctx, frame);
            while (out_frame_status >= 0) {
                out_frame_status = av.avcodec_receive_packet(encoder_ctx, out_packet);
                if (out_frame_status == av_again or in_frame_status == av.AVERROR_EOF) {
                    break;
                }
                if (out_frame_status < 0) {
                    std.debug.print("ERROR\n", .{});
                    break;
                }
                out_packet.*.stream_index = packet.*.stream_index;
                out_packet.*.duration = packet.*.duration;
                out_frame_status = av.av_interleaved_write_frame(out_format_ctx, out_packet);
            }
        }
    }

    // Finalization

    if (av.av_write_trailer(out_format_ctx) != 0) {
        return error.WriteError;
    }
    try fs.cwd().writeFile(out_file, buffered_writer.bytes());
}
