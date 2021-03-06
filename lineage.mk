# Release name
PRODUCT_RELEASE_NAME := I9195I

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/lt023g/device_lt023g.mk)

## Device identifier. This must come after all inclusions
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Boot animation
TARGET_SCREEN_HEIGHT := 1024
TARGET_SCREEN_WIDTH := 600

PRODUCT_DEVICE := lt023g
PRODUCT_NAME := lineage_lt023g
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := I9195I
