const std = @import("std");
const mem = std.mem;
const av = @cImport({
    @cInclude("./av.h");
    //    @cInclude("libavcodec/avcodec.h");
});

const AVFormatContext = av.AVFormatContext;
const AVCodecContext = av.AVCodecContext;
const AVCodec = av.AVCodec;
const AVPacket = av.AVPacket;

pub fn main() anyerror!void {
    _ = av.av_register_all();

    const input_file = "/tmp/test.mp4";
    var format_ctx: [*c]AVFormatContext = null;
    if (av.avformat_open_input(&format_ctx, input_file, null, null) != 0) {
        return error.FileNotFound;
    }
    defer av.free(format_ctx);
    if (av.avformat_find_stream_info(format_ctx, null) != 0) {
        return error.NoStreamInfo;
    }
    av.av_dump_format(format_ctx, 0, input_file, 0);

    const out_file = "/tmp/out.mp4";
    var out_format_ctx: [*c]AVFormatContext = null;
    if (av.avformat_alloc_output_context2(&out_format_ctx, null, "mp4", out_file) != 0) {
        return error.WriteError;
    }

    const nb_streams = format_ctx.*.nb_streams;
    var i: usize = 0;

    while (i < nb_streams) : (i += 1) {
        std.debug.print("Found stream: {d}\n", .{i});
        const in_stream = format_ctx.*.streams[i].*;
        const out_stream = av.avformat_new_stream(out_format_ctx, in_stream.codec.*.codec);
        if (out_stream == null) {
            return error.ParseError;
        }
        if ((out_format_ctx.*.oformat.*.flags & 0x0040) != 0) {
            std.debug.print("global header flag\n", .{});
            out_stream.*.codec.*.flags |= (1 << 22); // global header
        }
        if (av.avcodec_parameters_copy(out_stream.*.codecpar, in_stream.codecpar) != 0) {
            return error.ParseError;
        }
    }

    i = 0;
    const video_stream_idx = video_stream_idx: {
        while (i < nb_streams) : (i += 1) {
            if (@enumToInt(format_ctx.*.streams[i].*.codec.*.codec_type) == av.AVMEDIA_TYPE_VIDEO) {
                std.debug.print("Found video index\n", .{});
                break :video_stream_idx i;
            }
        }
        return error.NoVideoStream;
    };

    av.av_dump_format(out_format_ctx, 0, out_file, 1);
    if (av.avio_open(&out_format_ctx.*.pb, out_file, 2) != 0) {
        return error.WriteError;
    }
    defer _ = av.avio_close(out_format_ctx.*.pb);
    if (av.avformat_write_header(out_format_ctx, null) != 0) {
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
            std.debug.print("x -> {d} {x}\n", .{ data.len, data[0..8] });
            mem.copy(u8, packet.data[data.len - 8 .. data.len], "*FASTLY*");
        }
        if (av.av_interleaved_write_frame(out_format_ctx, &packet) != 0) {
            return error.WriteError;
        }
    }
    if (av.av_write_trailer(out_format_ctx) != 0) {
        return error.WriteError;
    }

    std.debug.print("DONE.\n", .{});
}
