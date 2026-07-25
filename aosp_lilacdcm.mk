#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Indicate the first API level the device has been commercially launched on
PRODUCT_SHIPPING_API_LEVEL := 27

# Inherit some common PixelOS stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Inherit from device makefile
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_NAME := aosp_lilacdcm
PRODUCT_DEVICE := lilacdcm
PRODUCT_MANUFACTURER := Sony
PRODUCT_BRAND := docomo
PRODUCT_MODEL := SO-02K

PRODUCT_GMS_CLIENTID_BASE := android-sony

TARGET_SUPPORTS_QUICK_TAP := true
TARGET_CALL_RECORDING_SUPPORTED := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="SO-02K-user 9 47.2.B.5.38 4216219063 release-keys" \
    BuildFingerprint=docomo/SO-02K/SO-02K:9/47.2.B.5.38/4216219063:user/release-keys
