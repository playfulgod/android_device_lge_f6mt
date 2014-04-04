LOCAL_PATH := device/lge/f6mt
RAMDISK_DIR := device/lge/f6mt/prebuilt/root

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/lge/f6mt/f6mt-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/f6mt/overlay

ifeq ($(TARGET_PREBUILT_KERNEL),)
	#LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	#LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
   #$(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)
$(call inherit-product, device/lge/f6mt/nfc.mk)

#$(call inherit-product, hardware/qcom/msm8960/msm8960.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Set default USB interface
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

### TEMP DIRTY HACK FOR LOGCAT ###
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/prebuilt/bin/logcat:system/bin/logcat
	
# Recovery
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh
PRODUCT_COPY_FILES += \
    device/lge/f6mt/twrp.fstab:recovery/root/etc/twrp.fsab

# Ramdisk
PRODUCT_COPY_FILES += \
    $(RAMDISK_DIR)/bootlogo.f6_res_images-timestamp:root/bootlogo.f6_res_images-timestamp \
    $(RAMDISK_DIR)/charger:root/charger \
    $(RAMDISK_DIR)/chargerlogo_res_images-timestamp:root/chargerlogo_res_images-timestamp \
    $(RAMDISK_DIR)/sbin/bootlogo.f6:root/sbin/bootlogo.f6 \
    $(RAMDISK_DIR)/sbin/bootlogo_fx3:root/sbin/bootlogo_fx3 \
    $(RAMDISK_DIR)/sbin/chargerlogo:root/sbin/chargerlogo \
    $(RAMDISK_DIR)/sbin/e2fsck_static:root/sbin/e2fsck_static \
    $(RAMDISK_DIR)/sbin/make_ext4fs:root/sbin/make_ext4fs \
    $(RAMDISK_DIR)/sbin/sreadahead_check:root/sbin/sreadahead_check \
    $(RAMDISK_DIR)/sbin/treadahead:root/sbin/treadahead \
    $(RAMDISK_DIR)/sbin/wallpaper:root/sbin/wallpaper \
    $(RAMDISK_DIR)/sbin/write_recovery:root/sbin/write_recovery



# loki
PRODUCT_PACKAGES += \
    loki.sh \
    loki_flash \
    loki_patch \
    loki_bootloaders \
    unlocked_bootloaders

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Live wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

#bootimages. THIS SUX
PRODUCT_COPY_FILES += \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00001.rle:root/bootimages/boot_logof6_00001.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00002.rle:root/bootimages/boot_logof6_00002.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00003.rle:root/bootimages/boot_logof6_00003.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00004.rle:root/bootimages/boot_logof6_00004.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00005.rle:root/bootimages/boot_logof6_00005.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00006.rle:root/bootimages/boot_logof6_00006.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00007.rle:root/bootimages/boot_logof6_00007.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00008.rle:root/bootimages/boot_logof6_00008.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00009.rle:root/bootimages/boot_logof6_00009.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00010.rle:root/bootimages/boot_logof6_00010.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00011.rle:root/bootimages/boot_logof6_00011.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00012.rle:root/bootimages/boot_logof6_00012.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00013.rle:root/bootimages/boot_logof6_00013.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00014.rle:root/bootimages/boot_logof6_00014.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00015.rle:root/bootimages/boot_logof6_00015.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00016.rle:root/bootimages/boot_logof6_00016.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00017.rle:root/bootimages/boot_logof6_00017.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00018.rle:root/bootimages/boot_logof6_00018.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00019.rle:root/bootimages/boot_logof6_00019.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00020.rle:root/bootimages/boot_logof6_00020.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00021.rle:root/bootimages/boot_logof6_00021.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00022.rle:root/bootimages/boot_logof6_00022.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00023.rle:root/bootimages/boot_logof6_00023.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00024.rle:root/bootimages/boot_logof6_00024.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00025.rle:root/bootimages/boot_logof6_00025.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00026.rle:root/bootimages/boot_logof6_00026.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00027.rle:root/bootimages/boot_logof6_00027.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00028.rle:root/bootimages/boot_logof6_00028.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00029.rle:root/bootimages/boot_logof6_00029.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00030.rle:root/bootimages/boot_logof6_00030.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00031.rle:root/bootimages/boot_logof6_00031.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00032.rle:root/bootimages/boot_logof6_00032.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00033.rle:root/bootimages/boot_logof6_00033.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00034.rle:root/bootimages/boot_logof6_00034.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00035.rle:root/bootimages/boot_logof6_00035.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00036.rle:root/bootimages/boot_logof6_00036.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00037.rle:root/bootimages/boot_logof6_00037.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00038.rle:root/bootimages/boot_logof6_00038.rle \
    $(RAMDISK_DIR)/bootimages/boot_logof6_00039.rle:root/bootimages/boot_logof6_00039.rle 



