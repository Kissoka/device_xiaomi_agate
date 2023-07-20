# Inherit from common trees
$(call inherit-product, device/xiaomi/mt6893-common/mt6893.mk)

PRODUCT_SHIPPING_API_LEVEL := 30

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Inherit from vendor blobs
$(call inherit-product, vendor/xiaomi/agate/agate-vendor.mk)