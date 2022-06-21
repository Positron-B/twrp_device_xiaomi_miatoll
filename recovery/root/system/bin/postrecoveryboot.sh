#
# Copyright (C) 2019-2022 The OrangeFox Recovery Project
#
# SPDX-License-Identifier: GPL-3.0-or-later
#

blockdev --setrw /dev/block/mapper/product
blockdev --setrw /dev/block/mapper/system
blockdev --setrw /dev/block/mapper/system_ext
blockdev --setrw /dev/block/mapper/vendor
