#!/usr/bin/sh
export NDK_PATH=$ANDROID_SDK_ROOT/ndk/magisk

for abi in arm64 arm x86 x86_64; do
  nice ./build.sh $abi

done
