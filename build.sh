#!/bin/bash
export USE_CCACHE=1
export CCACHE_DIR=/home/artur/.ccache
ccache -M20
echo "Cleaning after last build"
make clean
echo "Preparing for build"
make exynos5260-hlltexx_00_defconfig ARCH=arm
echo "Starting building.."
ccache make -j6 ARCH=arm CROSS_COMPILE=/home/artur/linaro_toolchains_2014/arm-cortex_a15-linux-gnueabihf-linaro_4.9.3-2014.12/bin/arm-cortex_a15-linux-gnueabihf- zImage
