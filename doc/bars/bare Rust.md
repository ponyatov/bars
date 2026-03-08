# bare Rust

As we want not only bare-metal programming, but also bare Rust environment rolled from scratch, wee need to do some steps in rewriting some core components:

## [[no_main]]

The function you write as `fn main() { ... }` is **not** the true entry point of your program: compiler provides an `int main()` wrapper function that performs essential initialization before your code ever executes, and cleanup after it returns.

1. Receiving arguments from the operating system
2. Setting up the runtime environment (stack guards, panic handling)
3. Initializing statics that require runtime construction
4. Calling your `main` function
5. Handling the return value and exiting appropriately

## [[no_std]]
## [[no_core]]
