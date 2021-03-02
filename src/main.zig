const std = @import("std");
const mem = std.mem;
const av = @cImport({
    @cInclude("./av.h");
    //    @cInclude("libavcodec/avcodec.h");
});

// https://github.com/hexstia/rtmAndroid/blob/aa50298815b4d1cec04bfa1b33e46b21f09cf6ec/rtmpfile/src/main/cpp/ffmpeg_handle.cpp

const AVFormatContext = av.AVFormatContext;
const AVCodecContext = av.AVCodecContext;
const AVCodec = av.AVCodec;
const AVPacket = av.AVPacket;

pub fn main() anyerror!void {
    _ = av.av_register_all();

    const input_file = "/tmp/fastly.mp4";
    var format_ctx: [*c]AVFormatContext = null;
    if (av.avformat_open_input(&format_ctx, input_file, null, null) != 0) {
        return error.FileNotFound;
    }
    defer av.free(format_ctx);
    if (av.avformat_find_stream_info(format_ctx, null) != 0) {
        return error.NoStreamInfo;
    }
    av.av_dump_format(format_ctx, 0, input_file, 0);

    const nb_streams = format_ctx.*.nb_streams;
    var i: usize = 0;
    const video_stream_idx = video_stream_idx: {
        while (i < nb_streams) : (i += 1) {
            if (@enumToInt(format_ctx.*.streams[i].*.codec.*.codec_type) == av.AVMEDIA_TYPE_VIDEO) {
                std.debug.print("Found\n", .{});
                break :video_stream_idx i;
            }
        }
        return error.NoVideoStream;
    };
    const stream = format_ctx.*.streams[video_stream_idx].*;
    var codec_ctx_orig = stream.codec;

    const codec = av.avcodec_find_decoder(codec_ctx_orig.*.codec_id);
    if (codec == null) {
        return error.UnsupportedCodec;
    }
    var codec_ctx = av.avcodec_alloc_context3(codec);
    defer av.free(codec_ctx);
    if (codec_ctx == null) {
        return error.UnsupportedCodec;
    }
    if (av.avcodec_copy_context(codec_ctx, codec_ctx_orig) != 0) {
        return error.UnsupportedCodec;
    }
    if (av.avcodec_open2(codec_ctx, codec, null) != 0) {
        return error.UnsupportedCodec;
    }

    const out_file = "/tmp/out.mp4";
    var out_format_ctx: [*c]AVFormatContext = null;
    if (av.avformat_alloc_output_context2(&out_format_ctx, null, "MP4", out_file) != 0) {
        return error.WriteError;
    }
    var out_stream = av.avformat_new_stream(out_format_ctx, codec);
    if (out_stream == null) {
        return error.UnsupportedCodec;
    }
    if (av.avcodec_parameters_copy(out_stream.*.codecpar, stream.codecpar) != 0) {
        return error.UnsupportedCodec;
    }
    av.av_dump_format(out_format_ctx, 0, out_file, 1);
    if (av.avio_open(&out_format_ctx.*.pb, out_file, 2) != 0) {
        return error.WriteError;
    }
    defer _ = av.avio_close(out_format_ctx.*.pb);
    if (av.avformat_write_header(out_format_ctx, 0) != 0) {
        return error.WriteError;
    }

    while (true) {
        var packet: AVPacket = undefined;
        if (av.av_read_frame(format_ctx, &packet) != 0) {
            break;
        }
        defer av.av_packet_unref(&packet);
        const data = packet.data[0..@intCast(usize, packet.size)];
        if (packet.stream_index != video_stream_idx) {
            std.debug.print("ignored (stream idx)\n", .{});
            continue;
        } else if (packet.flags == 0x0001) {
            std.debug.print("key frame\n", .{});
            mem.copy(u8, packet.data[data.len - 8 .. data.len], "*FASTLY*");
        }
        std.debug.print("x -> {d} {x}\n", .{ data.len, data[0..8] });
        if (av.av_write_frame(out_format_ctx, &packet) != 0) {
            return error.WriteError;
        }
    }
}
