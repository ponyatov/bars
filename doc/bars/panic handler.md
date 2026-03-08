# panic handler

- core [[Rust/Rust|Rust]] feature required to be present in any executable build
- the final function that executes when the program enters a state from which it cannot recover
	- In a hosted environment, the standard library provides this function — it prints an error message and begins unwinding.
	- In bare-metal Rust, we must write it ourselves.

The panic handler must have exactly this signature:
```rust
fn(panic_info: &core::panic::PanicInfo) -> !
```

The [[PanicInfo]] parameter contains:

- The panic message (if any)
- The location in source code where the panic occurred (file, line, column)
- Optionally, a payload that can be downcasted

The return type `!` (the never type) tells the compiler that this function never returns. After a panic, execution cannot continue normally: executable must be terminated, or bare-metal recovery procedure must be run.

For many embedded systems, the simplest correct handler is an infinite loop:
```rust
use core::panic::PanicInfo;

#[panic_handler]
fn panic(_info: &PanicInfo) -> ! {
    loop {}
}
```
