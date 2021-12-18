#
# Copyright (C) 2020 The Android Open Source Project
# Copyright (C) 2020 The TWRP Open Source Project
# Copyright (C) 2020 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/miatoll

# For building with minimal manifest
ALLOW_MISSING_DEPENDENCIES := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-2a-dotprod
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_VARIANT := cortex-a55

# Assert
TARGET_OTA_ASSERT_DEVICE := curtana,excalibur,gram,joyeuse,miatoll

# File systems
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 134217728
BOARD_SYSTEMIMAGE_PARTITION_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_COPY_OUT_VENDOR := vendor

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):init_xiaomi_miatoll
TARGET_RECOVERY_DEVICE_MODULES := init_xiaomi_miatoll

# Kernel
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom service_locator.enable=1 swiotlb=1 androidboot.usbcontroller=a600000.dwc3 loop.max_part=7 androidboot.selinux=permissive audit=0
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image
BOARD_PREBUILT_DTBIMAGE_DIR := $(DEVICE_PATH)/prebuilt
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_INCLUDE_RECOVERY_DTBO := true
BOARD_BOOTIMG_HEADER_VERSION := 2
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_FLASH_BLOCK_SIZE := 262144 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOTIMG_HEADER_VERSION)

# Platform
TARGET_BOARD_PLATFORM := atoll

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888

# Hack: prevent anti rollback
PLATFORM_SECURITY_PATCH := 2099-12-31
VENDOR_SECURITY_PATCH := 2099-12-31
PLATFORM_VERSION := 16.1.0

# TWRP Configuration
RECOVERY_SDCARD_ON_DATA := true
TW_THEME := portrait_hdpi
TW_EXTRA_LANGUAGES := true
