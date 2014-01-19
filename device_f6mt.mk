LOCAL_PATH := device/lge/f6mt
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/lge/f6mt/f6mt-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/f6mt/overlay

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

$(call inherit-product, build/target/product/full.mk)

$(call inherit-product, hardware/qcom/msm8960/msm8960.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

### TEMP DIRTY HACK FOR LOGCAT ###
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/prebuilt/bin/logcat:system/bin/logcat
	
# Recovery
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh

# loki
PRODUCT_PACKAGES += \
    loki.sh \
    loki_flash \
    loki_patch \
    loki_bootloaders \
    unlocked_bootloaders
        
# OMX
PRODUCT_PACKAGES += \
    libdivxdrmdecrypt \
    libmm-omxcore \
    libOmxCore \
    libOmxVdec \
    libOmxVenc \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxWmaDec \
    libstagefrighthw

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

# Wifi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/wifi/wpa_supplicant.conf:/system/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/prebuilt/etc/wifi/bcmdhd.cal:/system/etc/wifi/bcmdhd.cal

## HostAP
PRODUCT_PACKAGES += \
    hostapd

# Audio
PRODUCT_PACKAGES += \
    alsa.msm8960 \
    audio.a2dp.default \
    audio_policy.msm8960 \
    audio.primary.msm8960 \
    libalsa-intf \
    libaudioutils

# Graphics
PRODUCT_PACKAGES += \
    lights.msm8960 \
    copybit.msm8960 \
    gralloc.msm8960 \
    hwcomposer.msm8960 \
    libgenlock \
    libmemalloc \
    liboverlay \
    libQcomUI \
    libtilerenderer
    
# APN
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/prebuilt/etc/apns-conf.xml:system/etc/apns-conf.xml
	
# GPS config
PRODUCT_COPY_FILES += device/common/gps/gps.conf_US:system/etc/gps.conf

# Media config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml
    
# vold config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/vold.fstab:system/etc/vold.fstab

# thermald config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/thermald.conf:/system/etc/thermald.conf
    
# Sound configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/audio_effects.conf:system/etc/audio_effects.conf \
    $(LOCAL_PATH)/prebuilt/etc/audio_policy.conf:system/etc/audio_policy.conf
    
# Torch
PRODUCT_PACKAGES += \
    Torch

# Ramdisk
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/prebuilt/root/init.f6mt.rc:root/init.f6mt.rc \
        $(LOCAL_PATH)/prebuilt/root/init.fx3.rc:root/init.fx3.rc \
        $(LOCAL_PATH)/prebuilt/root/init.lge.cmm.usb.sh:root/init.lge.cmm.usb.sh \
        $(LOCAL_PATH)/prebuilt/root/init.lge.early.rc:root/init.lge.early.rc \
        $(LOCAL_PATH)/prebuilt/root/init.lge.rc:root/init.lge.rc \
        $(LOCAL_PATH)/prebuilt/root/init.lge.usb.rc:root/init.lge.usb.rc \
        $(LOCAL_PATH)/prebuilt/root/init.qcom.class_core.sh:root/init.qcom.class_core.sh \
        $(LOCAL_PATH)/prebuilt/root/init.qcom.class_main.sh:root/init.qcom.class_main.sh \
        $(LOCAL_PATH)/prebuilt/root/init.qcom.early_boot.sh:root/init.qcom.early_boot.sh 
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/prebuilt/root/init.qcom.rc:root/init.qcom.rc \
        $(LOCAL_PATH)/prebuilt/root/init.qcom.sh:root/init.qcom.sh \
	$(LOCAL_PATH)/prebuilt/root/init.qcom.syspart_fixup.sh:root/init.qcom.syspart_fixup.sh \
	$(LOCAL_PATH)/prebuilt/root/init.rc:root/init.rc \
	$(LOCAL_PATH)/prebuilt/root/init.trace.rc:root/init.trace.rc \
	$(LOCAL_PATH)/prebuilt/root/init.usb.rc:root/init.usb.rc \
	$(LOCAL_PATH)/prebuilt/root/ueventd.f6mt.rc:root/ueventd.f6mt.rc \
        $(LOCAL_PATH)/prebuilt/root/ueventd.qcom.rc:root/ueventd.qcom.rc \
        $(LOCAL_PATH)/prebuilt/root/ueventd.rc:root/ueventd.rc
        
# Qualcomm scripts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/etc/init.qcom.bt.sh:/system/etc/init.qcom.bt.sh \
    $(LOCAL_PATH)/prebuilt/etc/init.qcom.coex.sh:/system/etc/init.qcom.coex.sh \
    $(LOCAL_PATH)/prebuilt/etc/init.qcom.fm.sh:/system/etc/init.qcom.fm.sh \
    $(LOCAL_PATH)/prebuilt/etc/init.qcom.mdm_links.sh:/system/etc/init.qcom.mdm_links.sh \
    $(LOCAL_PATH)/prebuilt/etc/init.qcom.modem_links.sh:/system/etc/init.qcom.modem_links.sh \
    $(LOCAL_PATH)/prebuilt/etc/init.qcom.post_boot.sh:/system/etc/init.qcom.post_boot.sh \
    $(LOCAL_PATH)/prebuilt/etc/init.qcom.sdio.sh:/system/etc/init.qcom.sdio.sh \
    $(LOCAL_PATH)/prebuilt/etc/init.qcom.audio.sh:/system/etc/init.qcom.audio.sh \
    $(LOCAL_PATH)/prebuilt/etc/init.qcom.efs.sync.sh:/system/etc/init.qcom.sync.efs.sh \
    $(LOCAL_PATH)/prebuilt/etc/init.qcom.post_fs.sh:/system/etc/init.qcom.post_fs.sh \
    $(LOCAL_PATH)/prebuilt/etc/init.qcom.thermald_conf.sh:/system/etc/init.qcom.thermald_conf.sh \
    $(LOCAL_PATH)/prebuilt/etc/init.qcom.wifi.sh:/system/etc/init.qcom.wifi.sh
    
# Input device config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/usr/idc/melfas-ts.idc:system/usr/idc/melfas-ts.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/qwerty.idc:system/usr/idc/qwerty.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/qwerty2.idc:system/usr/idc/qwerty2.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/osp3-input.idc:system/usr/idc/osp3-input.idc

# Keylayouts and Keychars
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/lge_synaptics_touch.kl:system/usr/keylayout/lge_synaptics_touch.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/melfas-ts.kl:system/usr/keylayout/melfas-ts.kl \
    $(LOCAL_PATH)/prebuilt/usr/keylayout/osp3-input.kl:system/usr/keylayout/osp3-input.kl
    
# Prebuilt libraries that are needed for DRM playback
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/vendor/lib/drm/libdrmwvmplugin.so:system/vendor/lib/drm/libdrmwvmplugin.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/libwvdrm_L1.so:system/vendor/lib/libwvdrm_L1.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/libwvm.so:system/vendor/lib/libwvm.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib/libWVStreamControlAPI_L1.so:system/vendor/lib/libWVStreamControlAPI_L1.so \
    $(LOCAL_PATH)/prebuilt/etc/permissions/com.google.widevine.software.drm.xml:system/etc/permissions/com.google.widevine.software.drm.xml


