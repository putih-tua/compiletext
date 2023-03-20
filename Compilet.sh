#!/bin/bash
export KBUILD_BUILD_USER=Kang_Kopi
export KBUILD_BUILD_HOST=sdm660
# Compile plox
function compile() {
    make -j$(nproc) O=out ARCH=arm64 whyred_defconfig
    make -j$(nproc) ARCH=arm64 O=out \
                               CROSS_COMPILE=aarch64-linux-gn>
                               CROSS_COMPILE_ARM32=arm-linux->
}
compile
