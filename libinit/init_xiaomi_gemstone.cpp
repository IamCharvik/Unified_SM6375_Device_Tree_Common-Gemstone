/*
 * Copyright (C) 2024 The LineageOS Project
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include "vendor_init.h"

#include <libinit_dalvik_heap.h>

void vendor_load_properties() {
    set_dalvik_heap();
}
