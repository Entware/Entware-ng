#!/bin/sh

tar czvf bin/armv7soft-glibc/include.tar.gz -C ./staging_dir/target-arm_cortex-a9_glibc-2.23_eabi/opt/include/ .
tar czvf bin/armv5soft-glibc/include.tar.gz -C ./staging_dir/target-arm_xscale_glibc-2.23_eabi/opt/include/ .
tar czvf bin/x86-32-glibc/include.tar.gz    -C ./staging_dir/target-i386_i486_glibc-2.23/opt/include/ .
tar czvf bin/x86-64-glibc/include.tar.gz    -C ./staging_dir/target-x86_64_glibc-2.23/opt/include/ .
