#!/usr/bin/env bash

set -e
set -u
set -x

curl https://sh.rustup.rs -sSf | sh -s -- -y --default-toolchain nightly-2019-04-11

export PATH="$PATH:$HOME/.cargo/bin"

tools/build-all-docs.sh
