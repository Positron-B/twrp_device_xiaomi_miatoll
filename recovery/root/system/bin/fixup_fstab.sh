#!/system/bin/sh

#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

mount /dev/block/mapper/vendor /vendor &&
	{ grep -q wrappedkey_v0 /vendor/etc/fstab.qcom ||
		sed -i 's/[+:]wrappedkey_v0//g' /system/etc/recovery.fstab; } &&
	umount /vendor
