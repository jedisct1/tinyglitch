# Tinyglitch

This is just an attempt at doing video processing on the edge, using `ffmpeg` libraries.

Uses [Zigly](https://github.com/jedisct1/zigly), as well as `libavformat`, `libavcodecs`
and `libavutil` ported to WebAssembly/WASI.

Since these libraries also depend on the WASI sysroot, linking is a little bit tricky,
but it may work.

## Testing

```sh
curl -o /tmp/out.mp4 -H'Content-Type: video/mp4' --data-binary '@/tmp/in.mp4' https://...
```

## Known issues

Both the `ffmpeg` libraries and the application do heap allocations, using different
allocators. Which causes memory corruption.

We need to add support for custom allocators to the `ffmpeg` libraries, or find a
way to override the `wasi-sysroot` allocator.
