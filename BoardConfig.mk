DEVICE_PATH := device/xiaomi/agate

# Assertation
TARGET_OTA_ASSERT_DEVICE := agate,agatein,amber

# Inherit from common trees
include device/xiaomi/mt6893-common/BoardConfigCommon.mk

# Inherit from the proprietary version
include vendor/xiaomi/agate/BoardConfigVendor.mk