# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

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
TARGET_VENDOR := huawei

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=angler \
    BUILD_FINGERPRINT=google/angler/angler:7.1.1/NMF26F/3425388:user/release-keys \
    PRIVATE_BUILD_DESC="angler-user 7.1.1 NMF26F 3425388 release-keys"
