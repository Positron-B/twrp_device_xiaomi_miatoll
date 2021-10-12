#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from curtana device
$(call inherit-product, device/xiaomi/curtana/device.mk)

PRODUCT_DEVICE := curtana
PRODUCT_NAME := twrp_curtana
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 9S
PRODUCT_MANUFACTURER := xiaomi
