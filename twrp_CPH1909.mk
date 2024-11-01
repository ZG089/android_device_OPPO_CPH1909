#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

PRODUCT_COPY_FILES += \
  $(OUT_DIR)/target/device/oppo/CPH1909/recovery.fstab:$(TARGET_COPY_OUT_RECOVERY)recovery/root/etc/recovery.fstab


PRODUCT_DEVICE := CPH1909
PRODUCT_NAME := twrp_CPH1909
PRODUCT_BRAND := OPPO
PRODUCT_MODEL := CPH1909
PRODUCT_MANUFACTURER := oppo

PRODUCT_PREBUILT_KERNEL := true
TARGET_PREBUILT_KERNEL := device/oppo/CPH1909/prebuilt/kernel

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_oppo6765_18511-user 8.1.0 O11019 1616154336 release-keys"

BUILD_FINGERPRINT := None
