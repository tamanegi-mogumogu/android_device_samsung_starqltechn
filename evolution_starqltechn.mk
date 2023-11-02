#
# Copyright (C) 2023 EvolutionX
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

# Inherit framework first
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

# Inherit from starqltechn device
$(call inherit-product, device/samsung/starqltechn/device.mk)

# Inherit some common EvolutionX stuff
$(call inherit-product, vendor/evolution/config/common_full_phone.mk)

# Evo
EVO_BUILD_TYPE := UNOFFICIAL
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true

# Device identifier
PRODUCT_NAME := Evolution_starqltechn
PRODUCT_DEVICE := starqltechn
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SC-02K
PRODUCT_MANUFACTURER := samsung
PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_SYSTEM_NAME := GalaxyS9
PRODUCT_SYSTEM_DEVICE := GalaxyS9

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=GalaxyS9 \
    TARGET_PRODUCT=GalaxyS9 \
    PRIVATE_BUILD_DESC="starqltedcm-user 10 QP1A.190711.020 SC02KOMS1CVK1 release-keys"

BUILD_FINGERPRINT := samsung/SC-02K/SC-02K:10/QP1A.190711.020/SC02KOMS1CVK1:user/release-keys
