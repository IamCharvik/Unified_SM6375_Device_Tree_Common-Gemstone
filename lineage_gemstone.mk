#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from gemstone device
$(call inherit-product, device/xiaomi/gemstone/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := Redmi
PRODUCT_DEVICE := gemstone
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := 22111317G
PRODUCT_NAME := lineage_gemstone

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
