# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440


 $(call inherit-product, device/huawei/angler/aosp_angler.mk)

# Inherit some common XOSP stuff.

$(call inherit-product, vendor/xosp/config/common_full_phone.mk)

$(call inherit-product, vendor/xosp/config/xosp.mk)

DEVICE_PACKAGE_OVERLAYS += device/huawei/angler/overlay-cm

## Device identifier. This must come after all inclusions
PRODUCT_NAME := xosp_angler
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 6P

IS_ARM64 := TRUE
TARGET_VENDOR := huawei
RELEASE_TYPE := XOSP_OFFICIAL

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="google/angler/angler:7.1.1/N4F26T/3687331:user/release-keys" \
    PRIVATE_BUILD_DESC="angler-user 7.1.1 N4F26T 3687331 release-keys" \
BUILD_ID=N4F26T
