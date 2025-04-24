#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_RELEASE_NAME := NOTE_23


# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common PB stuff.
$(call inherit-product, vendor/pb/config/common.mk)

# Inherit from NOTE_23 device
$(call inherit-product, device/ssh/NOTE_23/device.mk)

PRODUCT_DEVICE := NOTE_23
PRODUCT_NAME := omni_NOTE_23
PRODUCT_BRAND := VGO_TEL
PRODUCT_MODEL := NOTE 23
PRODUCT_MANUFACTURER := ssh

PRODUCT_GMS_CLIENTID_BASE := android-ssh
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,device/ssh/NOTE_23/recovery/root,recovery/root)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="NOTE_23_V02-user 12 SP1A.210812.016 1704769981 release-keys"

BUILD_FINGERPRINT := VGO_TEL/NOTE_23_V02/NOTE_23:13/TP1A.220624.014/1704769981:user/release-keys
