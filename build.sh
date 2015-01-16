#!/bin/bash
export USE_CCACHE=1
export CCACHE_DIR=/home/artur/.ccache
ccache -M20
echo "Cleaning after last build"
make clean
echo "Preparing for build"
make exynos5260-hlltexx_00_defconfig ARCH=arm
echo "Starting building.."
ccache make -j6 ARCH=arm CROSS_COMPILE=/home/artur/arm-eabi-4.8/bin/arm-eabi- zImage
