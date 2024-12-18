# Setup for Build Time Autovars
if [ -z "$REALPATH" ]; then
    export REALPATH=`which realpath`  # /usr/bin/realpath
fi

if [ -z "$DIRNAME" ]; then
    export DIRNAME=`which dirname`  # /usr/bin/dirname
fi

# Shell Command Locations
if [ -z "$MKDIR" ]; then
    export MKDIR=`which mkdir`  # /usr/bin/mkdir
fi

if [ -z "$CURL" ]; then
    export CURL=`which curl`  # /usr/bin/curl
fi

if [ -z "$CHMOD" ]; then
    export CHMOD=`which chmod`  # /usr/bin/chmod
fi

# Build Time Autovars
SCRIPT=`$REALPATH "$0"`
SCRIPT_DIR=`$DIRNAME "$SCRIPT"`
PROJECT_ROOT=`$REALPATH $SCRIPT_DIR/../../..`

# Script Vars
if [ -z "$RUSTUP_TOOLCHAIN" ]; then
    export RUSTUP_TOOLCHAIN="stable"  # "stable" or "nightly"
fi

if [ -z "$RUSTUP_PROFILE" ]; then
    export RUSTUP_PROFILE="release"  # "debug" or "release"
fi

if [ -z "$RUSTUP_TARGETS" ]; then
    export RUSTUP_TARGETS="armv7-linux-androideabi aarch64-linux-android i686-linux-android x86_64-linux-android"  # "x86_64-unknown-linux-gnu"
fi

if [ -z "$REINSTALL_TOOLS" ]; then
    export REINSTALL_TOOLS="false"  # "true" or "false"
    FORCE_FLAG="--force"
fi

echo "Installing Rust..."
"$SCRIPT_DIR/rust.sh"

if [ -z "$CARGO" ]; then
    export CARGO=`which cargo`  # ~/.cargo/bin/cargo
fi

echo "Install Cargo NDK Tools..."
if [ $RUSTUP_PROFILE == "release" ]; then
    $CARGO +$RUSTUP_TOOLCHAIN install cargo-ndk $FORCE_FLAG
else
    $CARGO +$RUSTUP_TOOLCHAIN install cargo-ndk --debug $FORCE_FLAG
fi
