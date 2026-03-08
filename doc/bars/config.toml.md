# `.cargo/config.toml`

- default target:
```toml
[build]
target    = ".cargo/i386-pc-none.json"
jobs      = 4
```
- [[hw/arch/HOST|HOST]] system
```json
[target.x86_64-unknown-linux-gnu]
rustflags = ["--cfg", "feature=\"pc,i5,linux\""]
linker    = "x86_64-linux-gnu-gcc"
```
- TARGET=[[i386-pc-none]]
```json
[target.i386-pc-none]
rustflags = ["--cfg", "feature=\"pc,i486,none\""]
linker    = "i686-linux-gnu-gcc"
```
- the `build-std` feature, which requires a **nightly Rust compiler**, tells [[cargo]] to recompile the `core` library and `compiler_builtins` from source for your specific i386 target
```json
[unstable]
build-std = ["core", "compiler_builtins"]
```
- china mirrors for Rust packets (for ass-blocked countries):
```json
[source.crates-io]
replace-with = 'ustc'

[source.ustc]
registry = "sparse+https://mirrors.ustc.edu.cn/crates.io-index/"
[source.tuna]
registry = "sparse+https://mirrors.tuna.tsinghua.edu.cn/crates.io-index/"
```
