#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm6375-common
$(call inherit-product, device/xiaomi/sm6375-common/common.mk)

# Audio
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/audio,$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_holi)

PRODUCT_COPY_FILES += \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_holi/default_volume_tables.xml

# Display
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/display_id_4630947218746568833.xml:$(TARGET_COPY_OUT_VENDOR)/etc/displayconfig/display_id_4630947218746568833.xml

# Init
$(call soong_config_set,libinit,vendor_init_lib,//$(LOCAL_PATH):init_xiaomi_gemstone)

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
