#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm6375-common
$(call inherit-product, device/xiaomi/sm6375-common/common.mk)

# Overlay
PRODUCT_PACKAGES += \
    ApertureOverlayGemstone \
    FrameworkOverlayGemstone \
    FrameworkOverlayMoonstoneGl \
    FrameworkOverlayMoonstoneIn \
    SettingsProviderOverlayMoonstoneGl \
    SettingsProviderOverlayMoonstoneIn \
    SettingsProviderOverlaySunstoneCn \
    SettingsProviderOverlaySunstoneGl \
    SettingsProviderOverlaySunstoneX \
    WifiOverlayMoonstoneGl \
    WifiOverlayMoonstoneIn \
    WifiOverlaySunstoneCn \
    WifiOverlaySunstoneGl \
    WifiOverlaySunstoneX

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rro_overlays/config-odm.xml:$(TARGET_COPY_OUT_ODM)/overlay/config/config.xml

# Sku properties
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/sku/,$(TARGET_COPY_OUT_ODM)/etc)

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)
