# SPDX-License-Identifier: Apache-2.0
# Copyright (C) 2022 The LineageOS Project

# Inherit from generic products, most specific first
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/non_ab_device.mk)

# Product API level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o.mk)

# Inherit from star2lte device.mk
$(call inherit-product, device/samsung/star2lte/device.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/clover/config/common_full_phone.mk)

# Device identifier, this must come after all inclusions
PRODUCT_NAME := clover_star2lte
PRODUCT_DEVICE := star2lte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G965F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

# clover flags
CLOVER_MAINTAINER := bobo
TARGET_ENABLE_BLUR := false
WITH_GMS := false
CLOVER_BUILDTYPE := UNOFFICIAL

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="samsung star2lte star2lte:16 BP4A.251205.006 eng.androi:user release-keys" \
    BuildFingerprint=samsung/star2lte/star2lte:16/BP4A.251205.006/eng.androi:user/release-keys \
    DeviceName=$(PRODUCT_SYSTEM_DEVICE) \
    DeviceProduct=$(PRODUCT_SYSTEM_NAME) \
    SystemDevice=$(PRODUCT_SYSTEM_DEVICE) \
    SystemName=$(PRODUCT_SYSTEM_NAME)
