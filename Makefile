watch:
	cargo watch -x check -x test -x run

test:
	cargo test

coverage:
	cargo install cargo-tarpaulin
	cargo tarpaulin --ignore-tests

lint:
	rustup component add clippy
	cargo clippy

lint-warn:
	cargo clippy -- -D warnings

fmt:
	rustup component add rustfmt
	cargo fmt

fmt-check:
	cargo fmt -- --check

audit:
	cargo install cargo-audit
	cargo audit

deps:
	cargo add actix-web@4
	cargo add tokio@1 --features macros,rt-multi-thread