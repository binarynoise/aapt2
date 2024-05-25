#!/usr/bin/sh
set -e
set -x

export NDK_PATH=$ANDROID_SDK_ROOT/ndk/27.0.11718014

for abi in arm64 arm x86 x86_64; do
  nice ./build.sh $abi

done
