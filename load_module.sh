#!/bin/bash

mod_dir="rtl8812au_rtl8821au_${RESIN_DEVICE_TYPE}_${RESIN_HOST_OS_VERSION}"
echo "Installing module..."
cd $mod_dir
make install
insmod $mod_dir/8812au.ko
lsmod | grep 8812au
