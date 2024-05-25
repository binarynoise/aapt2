#!/usr/bin/sh
set -e
set -x

export NDK_PATH=$ANDROID_SDK_ROOT/ndk/27.0.11718014
export CMAKE_MAKE_PROGRAM=$ANDROID_SDK_ROOT/cmake/3.22.1/bin/ninja

for abi in arm64 arm x86 x86_64; do
  nice ./build.sh $abi

done

tar czf aapt2.tar.gz build/bin/aapt2*
