## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := fx3mt

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/fx3mt/device_fx3mt.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := fx3mt
PRODUCT_NAME := cm_fx3mt
PRODUCT_BRAND := MetroPCS
PRODUCT_MODEL := LG-MS659
PRODUCT_MANUFACTURER := LGE
