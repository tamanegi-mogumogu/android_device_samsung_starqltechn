#
# Copyright (C) 2018-2021 The LineageOS Project
# Copyright (C) 2021 lineageK
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from sdm845-common
-include device/samsung/sdm845-common/BoardConfigCommon.mk

DEVICE_PATH := device/samsung/starqltechn

# Renderer
TARGET_USES_VULKAN := true
USE_OPENGL_RENDERER := true

# SELINUX
# Assert
TARGET_OTA_ASSERT_DEVICE := starqltechn

# Kernel
TARGET_KERNEL_CONFIG := starqlte_chn_open_defconfig

# Vendor init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_starqltechn
TARGET_RECOVERY_DEVICE_MODULES := libinit_starqltechn
BUILD_BROKEN_MISSING_REQUIRED_MODULES := true
