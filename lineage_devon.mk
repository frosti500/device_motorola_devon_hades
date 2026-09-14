#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device
$(call inherit-product, device/motorola/devon/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device config
WITH_GMS := false
TARGET_HAS_UDFPS := false
TARGET_ENABLE_BLUR := true
PRODUCT_NO_CAMERA := false
TARGET_FACE_UNLOCK_SUPPORTED := true
PRODUCT_OTA_ENFORCE_VINTF_KERNEL_REQUIREMENTS := false
KERNEL_VERSION := 4.19

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_devon
PRODUCT_DEVICE := devon
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g32
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="devon_g-user 11 T2SNS33.73-22-3-19 565799 release-keys" \
    BuildFingerprint=motorola/devon_g/devon:11/T2SNS33.73-22-3-19/565799:user/release-keys \
    DeviceProduct=devon_g
    RisingChipset="Snapdragon 680" \
    RisingMaintainer="hades"
