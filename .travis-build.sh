#!/bin/sh
if [ "$RUSTFMT" = "true" ]; then
    cargo fmt --all -- --write-mode diff
else
    cargo build -vv --features "$FEATURES"
fi
