#
# Copyright (C) 2022 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# APEX
TW_EXCLUDE_APEX := true

# Brightness
TW_BRIGHTNESS_PATH := /sys/class/backlight/panel0-backlight/brightness
TW_DEFAULT_BRIGHTNESS := 2744
TW_MAX_BRIGHTNESS := 4095

# Display
TW_NO_SCREEN_BLANK := true

# Filesystem tools
TW_INCLUDE_NTFS_3G := true
TW_NO_EXFAT_FUSE := true

# Hack: prevent anti rollback
PLATFORM_SECURITY_PATCH := 2099-12-31
PLATFORM_VERSION := 16.1.0
VENDOR_SECURITY_PATCH := 2099-12-31

# UI
TW_EXTRA_LANGUAGES := true
TW_THEME := portrait_hdpi
