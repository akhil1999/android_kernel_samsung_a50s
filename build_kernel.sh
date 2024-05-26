#!/bin/bash

export ARCH=arm64
PWD=$(pwd)
export CROSS_COMPILE=$PWD/toolchain/aarch64-linux-android-4.9/bin/aarch64-linux-android-
export CLANG_TRIPLE=$PWD/toolchain/clang-4639204/bin/aarch64-linux-gnu-
export ANDROID_MAJOR_VERSION=r
export PLATFORM_VERSION=11
make exynos9610-a50sxx_defconfig
make -j12 \
	CC=$PWD/toolchain/clang-4639204/bin/clang \
	CROSS_COMPILE=$PWD/toolchain/aarch64-linux-android-4.9/bin/aarch64-linux-android-
