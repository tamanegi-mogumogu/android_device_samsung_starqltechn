#!/bin/bash

echo 'Starting Cloning repos for starqltechn'
echo 'Cloning Kernel tree [1/8]'
# Kernel for sdm845
rm -rf kernel/samsung/sdm845
git clone https://github.com/tamanegi-mogumogu/android_kernel_samsung_sdm845 -b lineage-20.0_test kernel/samsung/sdm845

echo 'Cloning Common Tree [2/8]'
# Common tree for sdm845-common
rm -rf device/samsung/sdm845-common
git clone https://github.com/tamanegi-mogumogu/android_device_samsung_sdm845-common_1 -b elixir-14 device/samsung/sdm845-common

echo 'Cloning Device Tree [3/8]'
# Device tree for starqltechn
rm -rf device/samsung/starqltechn
git clone https://github.com/tamanegi-mogumogu/android_device_samsung_starqltechn -b elixir-14-wip device/samsung/starqltechn

echo 'Cloning Vendor Trees [4/8]'
rm -rf vendor/samsung/sdm845-common
git clone https://github.com/tamanegi-mogumogu/android_vendor_samsung_sdm845-common -b lineage-20.0_test vendor/samsung/sdm845-common

rm -rf vendor/samsung/starqltechn
git clone https://github.com/tamanegi-mogumogu/vendor_samsung_starqltechn vendor/samsung/starqltechn

echo 'Cloning Hardware Samsung [5/8]'
# Hardware OSS parts for Samsung
mv hardware/samsung/nfc .
rm -rf hardware/samsung
git clone https://github.com/ElixirOS-982x/hardware_samsung -b evo-udc hardware/samsung
mv nfc hardware/samsung

echo 'Cloning Samsung_Slsi and Linaro BSP repos [6/8]'

echo 'Cloning Sepolicy Dependency repo [7/8]'
# Sepolicy
# rm -rf device/aosp/sepolicy
# git clone https://github.com/crdroidandroid/android_device_crdroid_sepolicy -b 14.0 device/aosp/sepolicy

rm -rf packages/apps/Nfc
git clone https://github.com/Evolution-X/packages_apps_Nfc.git packages/apps/Nfc

#rm -rf packages/modules/Bluetooth
#git clone https://github.com/TrebleDroid/platform_packages_modules_bluetooth -b android-14.0.0_r2-td packages/modules/Bluetooth

rm -rf packages/apps/GCamGOPrebuilt
git clone https://github.com/ArrowOS-Devices/android_packages_apps_GCamGOPrebuilt -b arrow-13.1 packages/apps/GCamGOPrebuilt

echo 'Cloning Dolby atoms repo [7/8]'

rm -rf vendor/dolby
git clone https://github.com/pure-soul-kk/sony_vendor_dolby -b udc vendor/dolby