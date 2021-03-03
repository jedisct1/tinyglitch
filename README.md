# Tinyglitch

This is just an attempt at doing video processing on the edge, using `ffmpeg` libraries.

Uses [Zigly](https://github.com/jedisct1/zigly), as well as `libavformat`, `libavcodecs`
and `libavutil` ported to WebAssembly/WASI.

Since these libraries also depend on the WASI sysroot, linking is a little bit tricky,
but it works.

## Testing

```sh
curl -o /tmp/out.mp4 -H'Content-Type: video/mp4' --data-binary '@/tmp/in.mp4' https://...
```