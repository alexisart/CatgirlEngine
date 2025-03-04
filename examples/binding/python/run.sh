#!/bin/sh
if [ -z "$RUSTUP_TOOLCHAIN" ]; then
    export RUSTUP_TOOLCHAIN="stable"  # "stable" or "nightly"
fi

if [ -z "$RUSTUP_PROFILE" ]; then
    export RUSTUP_PROFILE="debug"  # "debug" or "release"
fi

SCRIPT=`realpath "$0"`
SCRIPT_DIR=`dirname "$SCRIPT"`
PROJECT_ROOT=`realpath $SCRIPT_DIR/../../..`

# Needed for main.py to find libmain.so
export LD_LIBRARY_PATH=`realpath $PROJECT_ROOT/target/$RUSTUP_PROFILE`
$SCRIPT_DIR/main.py
