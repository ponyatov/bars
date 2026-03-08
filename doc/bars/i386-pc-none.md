# i386-pc-none

For [[bare-metal]] projects which aims to work without any OS (on [[qemu/QEMU|QEMU]] or retro/[[em/embedded|embedded]] hardware), the standard approach is to use a custom target specification designed for environments without an OS. At the time of this writing, a stable, built-in target triple like [[i386-pc-none]] is not the standard for [[Rust/Rust|Rust]].

The journey of bare-metal Rust often involves defining a custom target .json file, as alluded to in the development of the Linux support and other Rust-powered kernels.

The target specification file, which you might name `i386-pc-none.json`, acts as a bridge between the high-level Rust code and the low-level [[LLVM/LLVM|LLVM]] code generation. It contains all the necessary parameters for LLVM (the compiler backend) to produce correct machine code for [[i486dx]] we want to use as universal CPU for any x86 computer.

![[bars/config.toml]]
![[i386-pc-none.json]]