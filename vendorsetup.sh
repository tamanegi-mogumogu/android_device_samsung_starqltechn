#!/bin/bash

echo 'Starting Cloning repos for beyond2lte'
echo 'Cloning Kernel tree [1/7]'
# Kernel for sdm845
rm -rf kernel/samsung/sdm845
git clone https://github.com/tamanegi-mogumogu/android_kernel_samsung_sdm845 -b lineage-20.0_test kernel/samsung/sdm845

echo 'Cloning Common Tree [2/7]'
# Common tree for sdm845-common
rm -rf device/samsung/sdm845-common
git clone https://github.com/tamanegi-mogumogu/android_device_samsung_sdm845-common_1 -b elixir device/samsung/sdm845-common

echo 'Cloning Device Tree [3/7]'
# Device tree for starqlte
rm -rf device/samsung/beyond2lte
git clone https://github.com/tamanegi-mogumogu/android_device_samsung_starqltechn -b elixir device/samsung/starqltechn

echo 'Cloning Vendor Trees [4/7]'
rm -rf vendor/samsung/sdm845-common
git clone https://github.com/tamanegi-mogumogu/android_vendor_samsung_sdm845-common -b lineage-20.0_test vendor/samsung/sdm845-common

echo 'Cloning Hardware Samsung [5/7]'
# Hardware OSS parts for Samsung
mv hardware/samsung/nfc .
rm -rf hardware/samsung
git clone https://github.com/ElixirOS-982x/hardware_samsung -b evo-udc hardware/samsung
mv nfc hardware/samsung

echo 'Cloning Samsung_Slsi and Linaro BSP repos [6/7]'
# SLSI Sepolicy
rm -rf device/samsung_slsi/sepolicy
git clone https://github.com/ElixirOS-982x/android_device_samsung_slsi_sepolicy -b lineage-21.0 device/samsung_slsi/sepolicy

echo 'Cloning Sepolicy Dependency repo [7/7]'
# Sepolicy
rm -rf device/aosp/sepolicy
git clone https://github.com/crdroidandroid/android_device_crdroid_sepolicy device/aosp/sepolicy

rm -rf packages/apps/Nfc
git clone https://github.com/CherishOS/android_packages_apps_Nfc.git packages/apps/Nfc
