#
# Copyright (C) 2021-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from oscar device
$(call inherit-product, device/oneplus/oscar/device.mk)

# Inherit some common risingOS.
$(call inherit-product, vendor/rising/config/rising.mk)

PRODUCT_NAME := rising_oscar
PRODUCT_DEVICE := oscar
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := CPH2381

PRODUCT_SYSTEM_NAME := OP535DL1
PRODUCT_SYSTEM_DEVICE := OP535DL1

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="OP535DL1-user 13 TP1A.220905.001 S.13588ee_1-6feab release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := OnePlus/CPH2381/OP535DL1:13/TP1A.220905.001/S.13588ee_1-6feab:user/release-keys
