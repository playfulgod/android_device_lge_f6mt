$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/lge/f6mt/f6mt-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/f6mt/overlay

LOCAL_PATH := device/lge/f6mt
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/fstab.qcom:root/fstab.qcom
    
$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_f6mt
PRODUCT_DEVICE := f6mt

$(call inherit-product, hardware/qcom/msm8960/msm8960.mk)

# Recovery
#PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/recovery/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh
