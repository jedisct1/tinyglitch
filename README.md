# Tinyglitch

Build with Zig 0.18 and the FFmpeg archives from the
`recomputeatedge-transcode` branch. The bundled Zig bindings target the
FFmpeg revision used by those archives (`da12d600ea`).

Run this from the repository root to prepare the archive and build the
WebAssembly module.

```sh
set -e
git fetch --depth=1 origin 11d20990cbe48809cbc7d237962f4a459d0c0d49
tinyglitch_scratch=$(mktemp -d)
trap 'rm -rf "$tinyglitch_scratch"' EXIT

for name in aom avcodec avfilter avformat avutil c-builtins c-wasm swscale vpx; do
    git show "FETCH_HEAD:wasm-libs/lib$name.a" > "$tinyglitch_scratch/lib$name.a"
done

{
    printf '%s\n' 'CREATE ffmpeg-wasi.a'
    for archive in "$tinyglitch_scratch"/*.a; do
        printf 'ADDLIB %s\n' "$archive"
    done
    printf '%s\n' SAVE END
} | zig ar -M

zig build
```

The module is installed at `zig-out/bin/avglitch.wasm`.
