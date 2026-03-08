$(RUSTUP) $(CARGO):
# PROXY = -x 10.110.1.12:8888
	curl $(PROXY) --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
	. $HOME/.cargo/env
	cargo install cargo-watch
	rustup self update ; rustup update
	rustup target add x86_64-unknown-linux-gnu
# rustup target add i586-unknown-linux-musl
# rustup target add aarch64-unknown-linux-gnu
# rustup target add armv7-unknown-linux-gnueabihf
# rustup target add thumbv7em-none-eabihf
# rustup target add thumbv7em-none-eabi
# rustup target add thumbv7m-none-eabi
# rustup target add thumbv6m-none-eabi
