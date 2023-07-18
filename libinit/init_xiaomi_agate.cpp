/*
 * Copyright (C) 2021 The LineageOS Project
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <libinit_dalvik_heap.h>
#include <libinit_variant.h>

#include "vendor_init.h"

static const variant_info_t agatein_info = {
    .hwc_value = "INDIA",

    .brand = "Xiaomi",
    .device = "agatein",
    .marketname = "Xiaomi 11T",
    .model = "21081111TI",
    .build_fingerprint = "Xiaomi/agatein/agatein:11/RP1A.200720.011/V12.5.9.0.RKWMIXM:user/release-keys",

    .nfc = false,
};

static const variant_info_t agate_info = {
    .hwc_value = "",

    .brand = "Xiaomi",
    .device = "agate",
    .marketname = "Xiaomi 11T",
    .model = "M2104K11TC",
    .build_fingerprint = "Redmi/agate/agate:11/RP1A.200720.011/V12.5.9.0.RKWMIXM:user/release-keys",

    .nfc = true,
};

static const variant_info_t amber_global_info = {
    .hwc_value = "GLOBAL",

    .brand = "Xiaomi",
    .device = "amber_global",
    .marketname = "Xiaomi 11T",
    .model = "21081111RG",
    .build_fingerprint = "Xiaomi/amber_global/amber:11/RP1A.200720.011/V12.5.9.0.RKWMIXM:user/release-keys",

    .nfc = true,
};

static const std::vector<variant_info_t> variants = {
    agatein_info,
    agate_info,
    amber_global_info,
};

void vendor_load_properties() {
    search_variant(variants);
    set_dalvik_heap();
}
