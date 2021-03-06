# Tinyglitch

This is just an attempt at doing video processing on the edge, using `ffmpeg` libraries.

Uses [Zigly](https://github.com/jedisct1/zigly), as well as `libavformat`, `libavcodecs`
and `libavutil` ported to WebAssembly/WASI.

Since these libraries also depend on the WASI sysroot, linking is a little bit tricky,
but it may work.

## Testing

```sh
curl -o /tmp/out.mp4 --http1.1 -H'Content-Type: video/mp4' --data-binary '@/tmp/in.mp4' https://...
```

## Native version

Available in the [master branch](https://github.com/jedisct1/tinyglitch).

## Compiling and using ffmpeg in WebAssembly

### Install LLVM

On macOS:

```sh
brew install llvm
```

This is not stricly necessary, but since libunwind doesn't work on WebAssembly, and the `wasm-ld` linker requires non-generic options, this makes the process easier.

Give the LLVM tools a higher precedence than Xcode in your `PATH`:

```sh
export PATH=/usr/local/opt/llvm/bin:$PATH
```

### Install the WebAssembly builtins

Install [`libclang_rt.builtins-wasm32.a`](https://github.com/jedisct1/libclang_rt.builtins-wasm32.a) - These builtins are not shipped wth LLVM, but are required to use the WASI C library.

### Install the WASI C library

Download and extract [wasi-sysroot-*.tar.gz](https://github.com/WebAssembly/wasi-sdk/releases). The following instructions assume that it has been extracted to `/opt/wasi-sysroot`.

### Check that `clang` can compile to WebAssembly

```sh
{ echo '#include <stdio.h>'; echo 'int main(void){return puts("OK");}'} | \
  clang -x c -target wasm32-wasi --sysroot /opt/wasi-sysroot -
```

### Clone the `ffmpeg` repository

```sh
git clone https://github.com/FFmpeg/FFmpeg
cd FFMPEG
```

### Compile `ffmpeg` to WebAssembly

```sh
export PATH=/usr/local/opt/llvm/bin:$PATH

export CPPFLAGS="-Dtempnam\(A,B\)=tmpnam\(NULL\)"
export CFLAGS="-target wasm32-wasi --sysroot=/opt/wasi-sysroot"
export LDFLAGS="-target wasm32-wasi --sysroot=/opt/wasi-sysroot -Wl,--stack-first"

mkdir -p out

./configure --cc=clang --cxx=clang \
    --prefix=$(pwd)/out \
    --target-os=none \
    --optflags="-Os" \
    --ranlib=llvm-ranlib \
    --ar=llvm-ar \
    --nm=llvm-nm \
    --strip=llvm-strip \
    --disable-debug \
    --disable-asm --disable-autodetect --disable-doc \
    --disable-sdl2 --enable-cross-compile --disable-cuda-llvm \
    --disable-programs --disable-doc --disable-postproc \
    --disable-swresample --disable-pthreads --disable-network \
    --disable-hwaccels \
    --disable-protocols \
    --enable-protocol=file \
    --enable-protocol=data \
    --disable-indevs --disable-outdevs \
    --disable-devices --disable-appkit --disable-avfoundation --disable-coreimage \
    --disable-sndio --disable-schannel --disable-sdl2 --disable-securetransport \
    --disable-amf --disable-audiotoolbox --disable-cuda-llvm --disable-cuvid \
    --disable-ffnvcodec --disable-nvdec --disable-nvenc --disable-v4l2-m2m \
    --disable-vaapi --disable-vdpau

make install
```

Notes:
- Do not enable LTO. Linking your own application with `ffmpeg` compiled with LTO is literally going to take forever.
- `-Os` produces fastly WebAssembly code than `-O2` and `-O3`.
- Including the `file` protocol highly recommended, even if you are not actually going to access files. If it is not compiled in, anything involving timecodes immediately becomes much more complicated to do.

Libraries compiled to WebAssembly are then available in `out/lib/`:

```text
-rw-r--r--  1 j  wheel  17328350 Mar  6 19:25 libavcodec.a
-rw-r--r--  1 j  wheel      5626 Mar  6 19:25 libavdevice.a
-rw-r--r--  1 j  wheel   3359666 Mar  6 19:25 libavfilter.a
-rw-r--r--  1 j  wheel   2530996 Mar  6 19:25 libavformat.a
-rw-r--r--  1 j  wheel   2648730 Mar  6 19:25 libavutil.a
-rw-r--r--  1 j  wheel    547840 Mar  6 19:25 libswscale.a
drwxr-xr-x  8 j  wheel       256 Mar  6 19:25 pkgconfig
```

`libavdevice.a` can be ignored.

## Using the `ffmpeg` libraries in WebAssembly

Using these libraries in an application requires a few things.

First, the WASI C library (e.g. `/opt/wasi-sysroot/lib/wasm32-wasi/libc.a`) needs to be linked, as well as the builtins `libclang_rt.builtins-wasm32.a`.

The only suitable linker for this is `wasm-ld`.

1) Compile your application into an object. This is necessary to avoid symbol collisions with the WASI C library:
```sh
zig build-obj -target wasm32-wasi -O ReleaseSafe src/main.zig`
```
2) Use `wasm-ld` to link this object, the `ffmpeg` libraries, the WASI C library and the builtins:
```sh
wasm-ld --stack-first --strip-all --compress-relocations \
  -o tinyglitch.wasm main.o.wasm \
  wasm-libs/libavutil wasm-libs/libavcodec.a wasm-libs/libavformat.a \
  libc.a libclang_rt.builtins-wasm32.a
```

Having multiple memory allocators in the same WebAssembly application is bound to cause memory corruption. This will happen with the `ffmpeg` libraries, unless your application uses `ffmpeg`'s memory management functions.

In order to avoid this, use the following allocator:

``zig
const Allocator = std.mem.Allocator;
pub const av_allocator = &av_allocator_state;
var av_allocator_state = Allocator{
    .allocFn = avAlloc,
    .resizeFn = avResize,
};

fn avAlloc(self: *Allocator, len: usize, ptr_align: u29, len_align: u29, ret_addr: usize) Allocator.Error![]u8 {
    std.debug.assert(ptr_align <= @alignOf(std.c.max_align_t));
    const ptr = @ptrCast([*]u8, av.av_malloc(len) orelse return error.OutOfMemory);
    return ptr[0..len];
}

fn avResize(self: *Allocator, buf: []u8, old_align: u29, new_len: usize, len_align: u29, ret_addr: usize) Allocator.Error!usize {
    if (new_len == 0) {
        av.av_free(buf.ptr);
        return 0;
    }
    if (new_len <= buf.len) {
        return mem.alignAllocLen(buf.len, new_len, len_align);
    }
    return error.OutOfMemory;
}
```
