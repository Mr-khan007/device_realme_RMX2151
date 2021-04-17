#
# Copyright (C) 2020 Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile
$(call inherit-product, device/realme/RMX2151/device.mk)

# Inherit some common PixelPlusUI stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

TARGET_GAPPS_ARCH := arm64
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_FACE_UNLOCK_SUPPORTED := true
CUSTOM_BUILD_TYPE := OFFICIAL
PRODUCT_PROPERTY_OVERRIDES += \
    ro.ppui.device_name=Realme-G95-Series \
    ro.ppui.version=3.4 \
    ro.ppui.version_code=Onyx \
    ro.ppui.is_official=true \
    ro.ppui.maintainer_name=sarthakroy2002

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_RMX2151
PRODUCT_DEVICE := RMX2151
PRODUCT_BRAND := realme
PRODUCT_MODEL := Realme G95 Series
PRODUCT_MANUFACTURER := realme

# Build info
PRODUCT_GMS_CLIENTID_BASE := android-oppo
