# Tinyglitch

This is just an attempt at doing video processing on the edge, using `ffmpeg` libraries.

Uses [Zigly](https://github.com/jedisct1/zigly), as well as `libavformat`, `libavcodecs`
and `libavutil` ported to WebAssembly/WASI.

Since these libraries also depend on the WASI sysroot, linking is a little bit tricky,
but it may work.

## Known issues

Both the `ffmpeg` libraries and the application do heap allocations, using different
allocators. Causing memory corruption.

We need to find a way to override the `wasi-sysroot` allocator, used by `ffmpeg`.
Or force the application to use the `wasi-sysroot` allocator, which may not work
well in Rust.

## Native version

Available in the [master branch](https://github.com/jedisct1/tinyglitch).
