#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from X688B device
$(call inherit-product, device/infinix/X688B/device.mk)

PRODUCT_DEVICE := X688B
PRODUCT_NAME := omni_X688B
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix X688B
PRODUCT_MANUFACTURER := infinix

PRODUCT_GMS_CLIENTID_BASE := android-infinix

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="fox_X688B-eng 16.1.0 RQ1A.210205.004 eng.runner.20221231.191430 test-keys"

BUILD_FINGERPRINT := Infinix/fox_X688B/X688B:16.1.0/RQ1A.210205.004/runner12311906:eng/test-keys
