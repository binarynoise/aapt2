#!/bin/bash

set -x
set -e

docker build -t aapt2-builder .
docker run --rm -it \
	-v ".":/home/user/aapt2 \
	-v "$ANDROID_SDK_ROOT":/home/user/Android-Sdk \
	-e ANDROID_SDK_ROOT=/home/user/Android-Sdk \
	-w /home/user/aapt2 \
	aapt2-builder
