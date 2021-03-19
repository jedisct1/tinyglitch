# Tinyglitch

This is just an attempt at doing video processing on the edge, using `ffmpeg` libraries.

Uses [zigly](https://github.com/jedisct1/zigly), as well as `libavformat`, `libavcodecs` and `libavutil` ported to WebAssembly/WASI.

- [Tinyglitch](#tinyglitch)
  - [Compiling](#compiling)
  - [Testing](#testing)
  - [Native version](#native-version)
- [Compiling and using ffmpeg in WebAssembly](#compiling-and-using-ffmpeg-in-webassembly)
  - [Prerequisites](#prerequisites)
    - [Install LLVM](#install-llvm)
    - [Install the WebAssembly builtins](#install-the-webassembly-builtins)
    - [Install the WASI C library](#install-the-wasi-c-library)
    - [Check that `clang` can compile to WebAssembly](#check-that-clang-can-compile-to-webassembly)
  - [Compiling the `vpx` library, for the `VP1` codecs](#compiling-the-vpx-library-for-the-vp1-codecs)
    - [Clone the `libvpx` repository](#clone-the-libvpx-repository)
    - [Patch the configure script](#patch-the-configure-script)
    - [Configure](#configure)
    - [Ignore `setjmp` calls](#ignore-setjmp-calls)
    - [Disable threading support](#disable-threading-support)
    - [Compile](#compile)
  - [Compiling `libaom`, for AV1 support](#compiling-libaom-for-av1-support)
    - [Setup](#setup)
    - [Compilation](#compilation)
    - [Rebuilding the libraries](#rebuilding-the-libraries)
    - [Manual install](#manual-install)
  - [Compiling `ffmpeg`](#compiling-ffmpeg)
    - [Clone the `ffmpeg` repository](#clone-the-ffmpeg-repository)
    - [Path `ffmpeg` for `aom` detection](#path-ffmpeg-for-aom-detection)
    - [Compile `ffmpeg` to WebAssembly](#compile-ffmpeg-to-webassembly)
  - [Using the `ffmpeg` libraries in WebAssembly](#using-the-ffmpeg-libraries-in-webassembly)

## Compiling

```sh
make
```

This requires `wasm-ld` to be in your `PATH`.

## Testing

```sh
curl -o /tmp/out.mp4 --http1.1 -H'Content-Type: video/mp4' --data-binary '@/tmp/in.mp4' https://...
```

## Native version

Available in the [master branch](https://github.com/jedisct1/tinyglitch).

# Compiling and using ffmpeg in WebAssembly

## Prerequisites

### Install LLVM

On macOS:

```sh
brew install llvm
```

This is not stricly necessary, but since `libunwind` doesn't work on WebAssembly, and the `wasm-ld` linker requires non-generic options, this makes the process easier.

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

## Compiling the `vpx` library, for the `VP1` codecs

### Clone the `libvpx` repository

```sh
git clone git@github.com:webmproject/libvpx.git
cd libvpx
```

### Patch the configure script

Patch `build/make/configure.sh` to include:

```diff
diff --git a/build/make/configure.sh b/build/make/configure.sh
index 81d30a16c..eea1e4946 100644
--- a/build/make/configure.sh
+++ b/build/make/configure.sh
@@ -797,6 +797,9 @@ process_common_toolchain() {
       *os2*)
         tgt_os=os2
         ;;
+      *wasi*)
+        tgt_os=wasi
+        ;;
     esac

     if [ -n "$tgt_isa" ] && [ -n "$tgt_os" ]; then
@@ -806,8 +809,8 @@ process_common_toolchain() {

   toolchain=${toolchain:-generic-gnu}

-  is_in ${toolchain} ${all_platforms} || enabled force_toolchain \
-    || die "Unrecognized toolchain '${toolchain}'"
+  is_in ${toolchain} ${all_platforms} || enabled force_toolchain \
+    || echo "Unsupported toolchain"

   enabled child || log_echo "Configuring for target '${toolchain}'"

diff --git a/configure b/configure
index da631a45e..c6e34fb83 100755
--- a/configure
+++ b/configure
@@ -590,9 +590,6 @@ process_detect() {
         }
     fi
     check_header stdio.h || die "Unable to invoke compiler: ${CC} ${CFLAGS}"
-    check_ld <<EOF || die "Toolchain is unable to link executables"
-int main(void) {return 0;}
-EOF
     # check system headers

     # Use both check_header and check_lib here, since check_lib
```

### Configure

```sh
env LD=wasm-ld RANLIB=llvm-ranlib LDFLAGS="-Os --target=wasm32-wasi --sysroot /opt/wasi-sysroot" \
CXX=/usr/local/opt/llvm/bin/clang CXXFLAGS="-Os --target=wasm32-wasi --sysroot /opt/wasi-sysroot" \
CC=/usr/local/opt/llvm/bin/clang CFLAGS="-Os --target=wasm32-wasi --sysroot /opt/wasi-sysroot" \
./configure --prefix=/tmp/vpx --target=generic-gnu --disable-multithread --disable-tools \
--disable-debug --disable-docs --disable-examples --enable-vp9 --enable-vp8 \
--enable-optimizations
```

### Ignore `setjmp` calls

WASI doesn't support `setjmp`/`longjmp`. A dummy `setjmp.h` header can be added in the `/opt/wasi-sysroot/include/`
directory:

```c
#pragma once
typedef void *jmp_buf;
#define longjmp(A, B)
#define setjmp(X) 0
```

### Disable threading support

Change occurrences of `CONFIG_MULTITHREAD` to `0`.

### Compile

```sh
make install
```

## Compiling `libaom`, for AV1 support

### Setup

Create a `cmake/toolchains/wasi.cmake` file:

```cmake
set(CMAKE_CROSSCOMPILING "TRUE")
set(CMAKE_SYSTEM_PROCESSOR "generic")
set(CMAKE_SYSTEM_NAME "wasi")
set(CMAKE_C_COMPILER /usr/local/opt/llvm/bin/clang)
set(CMAKE_CXX_COMPILER /usr/local/opt/llvm/bin/clang++)
set(CMAKE_C_COMPILER_ARG1 "-target wasm32-wasi --sysroot /opt/wasi-sysroot")
set(CMAKE_CXX_COMPILER_ARG1 "-target wasm32-wasi --sysroot /opt/wasi-sysroot")
set(CMAKE_AR llvm-ar)
set(CMAKE_NM llvm-nm)
set(CMAKE_LD wasm-ld)
```

Then run:

```sh
mkdir build

cd build

env AR=llvm-ar NM=llvm-nm LD=wasm-ld RANLIB=llvm-ranlib LDFLAGS="-Os --target=wasm32-wasi --sysroot /opt/wasi-sysroot" CXX=/usr/local/opt/llvm/bin/clang CXXFLAGS="-Os --target=wasm32-wasi --sysroot /opt/wasi-sysroot" CC=/usr/local/opt/llvm/bin/clang CFLAGS="-Os --target=wasm32-wasi --sysroot /opt/wasi-sysroot" cmake .. -DCMAKE_TOOLCHAIN_FILE=../build/cmake/toolchains/wasi.cmake
```

### Compilation

Compile as much as possible:

```sh
make -k -i
```

### Rebuilding the libraries

The resulting libraries are not usable. They need to be properly recreated.

Start by removing unneeded files:

```sh
rm -fr CMakeFiles/test* CMakeFiles/**/examples
```

Then create the `libaom.a` file out of the remaining objects:

```sh
llvm-ar a libaom.a **/*.obj
```

### Manual install

```sh
mkdir -p /tmp/aom/{include,lib}
mv libaom.a /tmp/aom/lib
cp -R cp -R ../aom/* /tmp/aom/include
```

## Compiling `ffmpeg`

### Clone the `ffmpeg` repository

```sh
git clone https://github.com/FFmpeg/FFmpeg
cd FFmpeg
```

### Path `ffmpeg` for `aom` detection

```diff
diff --git a/configure b/configure
index f0ac719d2d..dd65bcb8f9 100755
--- a/configure
+++ b/configure
@@ -6336,7 +6336,7 @@ enabled gmp               && require gmp gmp.h mpz_export -lgmp
 enabled gnutls            && require_pkg_config gnutls gnutls gnutls/gnutls.h gnutls_global_init
 enabled jni               && { [ $target_os = "android" ] && check_headers jni.h && enabled pthreads || die "ERROR: jni not found"; }
 enabled ladspa            && require_headers "ladspa.h dlfcn.h"
-enabled libaom            && require_pkg_config libaom "aom >= 1.0.0" aom/aom_codec.h aom_codec_version
+enabled libaom            && require_headers "aom/aom_codec.h"
 enabled libaribb24        && { check_pkg_config libaribb24 "aribb24 > 1.0.3" "aribb24/aribb24.h" arib_instance_new ||
                                { enabled gpl && require_pkg_config libaribb24 aribb24 "aribb24/aribb24.h" arib_instance_new; } ||
                                die "ERROR: libaribb24 requires version higher than 1.0.3 or --enable-gpl."; }
diff --git a/libavutil/file_open.c b/libavutil/file_open.c
index cc302f2f76..9b7f02c62e 100644
--- a/libavutil/file_open.c
+++ b/libavutil/file_open.c
@@ -28,6 +28,7 @@
 #if HAVE_IO_H
 #include <io.h>
 #endif
+#include <stdio.h>

 #ifdef _WIN32
 #undef open
 ```

### Compile `ffmpeg` to WebAssembly

```sh
export PATH=/usr/local/opt/llvm/bin:$PATH

VPX="-I/tmp/vpx/include -L/tmp/vpx/lib"
AOM="-I/tmp/aom/include -L/tmp/aom/lib"

export CPPFLAGS="-Dtempnam\(A,B\)=tmpnam\(NULL\) $VPX $AOM"
export CFLAGS="-target wasm32-wasi --sysroot=/opt/wasi-sysroot $VPX $AOM"
export LDFLAGS="-target wasm32-wasi --sysroot=/opt/wasi-sysroot -Wl,--stack-first $VPX $AOM"

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
    --disable-asm --disable-doc \
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
    --disable-vaapi --disable-vdpau \
    --enable-libvpx \
    --enable-libaom

make install
```

Notes:
- Do not enable LTO. Linking your own application with `ffmpeg` compiled with LTO is literally going to take forever.
- `-Os` produces faster WebAssembly code than `-O2` and `-O3`.
- Including the `file` protocol highly recommended, even if you are not actually going to access files. If it is not compiled in, anything involving timecodes is not going to behave as expected.
- TL;DR: use the commands above.

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

This repository contains a PoC written in [zig](https://ziglang.org), using the [zigly](https://github.com/jedisct1/zigly) library for Compute@Edge.

These libraries can also be used on the edge in Rust with the [ffmpeg-wasi](https://docs.rs/ffmpeg-wasi) crate. Using AssemblyScript seems a little more complicated at the moment.

Instructions for the current code:

1) Compile your application into an object. This is necessary to avoid symbol collisions with the WASI C library:
```sh
zig build-obj -target wasm32-wasi -O ReleaseSafe src/main.zig
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

```zig
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
