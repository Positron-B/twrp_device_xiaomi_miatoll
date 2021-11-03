/*
 * Copyright (C) 2021 The LineageOS Project
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <android-base/properties.h>
#include <libinit_utils.h>

#include <libinit_variant.h>

using android::base::GetProperty;

#define HWNAME_PROP "ro.boot.hwname"

void search_variant(const std::vector<variant_info_t> variants) {
    std::string hwname_value = GetProperty(HWNAME_PROP, "");

    for (const auto& variant : variants) {
        if (variant.device == hwname_value) {
            set_variant_props(variant);
            break;
        }
    }
}

void set_variant_props(const variant_info_t variant) {
    set_ro_build_prop("brand", variant.brand, true);
    set_ro_build_prop("device", variant.device, true);
    set_ro_build_prop("model", variant.model, true);
}
