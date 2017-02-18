#!/bin/sh

tar czvf bin/targets/armv7soft/generic-glibc/include.tar.gz -C ./staging_dir/target-arm_cortex-a9_glibc-2.23_eabi/opt/include/ .
tar czvf bin/targets/armv5soft/generic-glibc/include.tar.gz -C ./staging_dir/target-arm_xscale_glibc-2.23_eabi/opt/include/ .
tar czvf bin/targets/x86-32/generic-glibc/include.tar.gz    -C ./staging_dir/target-i386_pentium_glibc-2.23/opt/include/ .
tar czvf bin/targets/x86-64/generic-glibc/include.tar.gz    -C ./staging_dir/target-x86_64_glibc-2.23/opt/include/ .
