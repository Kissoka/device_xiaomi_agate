# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

TARGET_BOOT_ANIMATION_RES := 1080

# Inherit from ares device makefile
$(call inherit-product, device/xiaomi/agate/device.mk)

# Inherit some source stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Boot Animation
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := agate
PRODUCT_NAME := lineage_agate
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := mt6893
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=agate \
    PRODUCT_NAME=agate \
    PRIVATE_BUILD_DESC="agate-user 11 RP1A.200720.011 V12.5.9.0.RKWMIXM release-keys"

BUILD_FINGERPRINT := Xiaomi/agate/agate:11/RP1A.200720.011/V12.5.9.0.RKWMIXM:user/release-keys