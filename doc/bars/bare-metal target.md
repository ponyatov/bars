# bare-metal target

- [[hw/arch/i386|i386]] [[i486dx]]

To add a bare-metal target for the i386 architecture (specifically for a processor like the i486dx) to your Rust toolchain, you will use the `rustup target add` command followed by the precise name of the target triple. However, the availability of a standard, official target for bare-metal i386 systems is nuanced.

A "[[target triple]]" is a specific string that describes the platform for which the code is compiled. It typically encodes
- the CPU architecture,
- the vendor,
- the operating system, and
- the environment.

For your goal of programming an [[i486dx]] processor on bare metal — that is, without an underlying operating system — you would ideally use a target triple that specifies `none` as the operating system, similar to how one might target an ARM [[em/Cortex-M|Cortex-M]] microcontrollers.

When you run rustup target list, you will find many pre-defined targets. Among them, you might see targets like [[i686-unknown-linux-gnu]] (for 32-bit Linux with glibc) or [[i686-unknown-linux-musl]] (for 32-bit Linux with musl libc) . While you could technically add one of these, they are intended for platforms running an operating system. They link against C standard libraries and assume an OS kernel for system calls, which makes them unsuitable for true bare-metal development.

![[i386-pc-none]]
