## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := fx3

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/fx3/device_fx3.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := fx3
PRODUCT_NAME := cm_fx3
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-MS659
PRODUCT_MANUFACTURER := LGE
