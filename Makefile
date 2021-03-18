all: tinyglitch.wasm

clean:
	-@rm main.o.wasm tinyglitch.wasm

tinyglitch.wasm: main.o.wasm
	wasm-ld --stack-first --strip-all --compress-relocations -o tinyglitch.wasm main.o.wasm wasm-libs/{lib{avutil,avcodec,avformat}.a,libc-wasm.a,libc-builtins.a,libvpx.a}
	-@rm main.o.wasm

opt: tinyglitch.wasm
	wasm-opt -O4 -o tinyglitch.opt.wasm tinyglitch.wasm
	mv -f tinyglitch.opt.wasm tinyglitch.wasm

main.o.wasm: src/main.zig
	zig build-obj -target wasm32-wasi -O ReleaseSafe src/main.zig
