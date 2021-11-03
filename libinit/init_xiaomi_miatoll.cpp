/*
 * Copyright (C) 2021 The LineageOS Project
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <libinit_variant.h>
#include "vendor_init.h"

static const variant_info_t curtana_info = {
    .brand = "Redmi",
    .device = "curtana",
    .model = "Redmi Note 9S",
};

static const variant_info_t excalibur_info = {
    .brand = "Redmi",
    .device = "excalibur",
    .model = "Redmi Note 9 Pro Max",
};

static const variant_info_t gram_info = {
    .brand = "POCO",
    .device = "gram",
    .model = "POCO M2 Pro",
};

static const variant_info_t joyeuse_info = {
    .brand = "Redmi",
    .device = "joyeuse",
    .model = "Redmi Note 9 Pro",
};

static const std::vector<variant_info_t> variants = {
    curtana_info,
    excalibur_info,
    gram_info,
    joyeuse_info,
};

void vendor_load_properties() {
    search_variant(variants);
}
