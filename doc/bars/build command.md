# build & run command

```sh
cargo +nightly run -Z build-std=core --target .cargo/i386-pc-none.json
```
- force [[Rust/nightly]] with custom target from .json specification
- [[Rust/core]] library must be built from source

## `.cargo/config.toml`

```toml
[target.i386-pc-none]
rustflags = ["--cfg", "feature=\"pc,i486,none\""]
linker    = "rust-lld"
runner    = "qemu-system-i386 -kernel"
```

> [[bars/multiboot|multiboot]]
