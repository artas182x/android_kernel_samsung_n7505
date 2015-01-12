#!/bin/bash
echo "Cleaning after last build"
make clean
echo "Preparing for build"
make exynos5260-hlltexx_00_defconfig ARCH=arm
echo "Starting building.."
ccache make -j6 ARCH=arm CROSS_COMPILE=/home/artur/arm-eabi-4.6/bin/arm-eabi- zImage
