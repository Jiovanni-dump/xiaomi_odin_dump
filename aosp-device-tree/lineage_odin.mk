#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from odin device
$(call inherit-product, device/xiaomi/odin/device.mk)

PRODUCT_DEVICE := odin
PRODUCT_NAME := lineage_odin
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 2106118C
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="odin-user 12 RKQ1.211001.001 V13.1.22.10.24.DEV release-keys"

BUILD_FINGERPRINT := Xiaomi/odin/odin:12/RKQ1.211001.001/V13.1.22.10.24.DEV:user/release-keys
