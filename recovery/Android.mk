LOCAL_PATH := $(call my-dir)

# TWRP fstab
include $(CLEAR_VARS)
LOCAL_MODULE := twrp.fstab
LOCAL_SRC_FILES := twrp.fstab
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_STEM := twrp.fstab
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)/etc
include $(BUILD_PREBUILT)

# Common USB setup
include $(CLEAR_VARS)
LOCAL_MODULE := init.recovery.usb
LOCAL_SRC_FILES := init.recovery.usb.rc
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_STEM := init.recovery.usb
LOCAL_MODULE_SUFFIX := .rc
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

# Common QCOM setup
include $(CLEAR_VARS)
LOCAL_MODULE := init.recovery.qcom
LOCAL_SRC_FILES := init.recovery.qcom.rc
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_STEM := init.recovery.qcom
LOCAL_MODULE_SUFFIX := .rc
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT)
include $(BUILD_PREBUILT)

# Keymaster setup
include $(CLEAR_VARS)
LOCAL_MODULE := init.recovery.keymaster
ifeq ($(TARGET_KEYMASTER_V4),true)
LOCAL_SRC_FILES := init.recovery.keymaster-4.0.rc
else
LOCAL_SRC_FILES := init.recovery.keymaster-3.0.rc
endif
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_STEM := init.recovery.keymaster
LOCAL_MODULE_SUFFIX := .rc
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)
include $(BUILD_PREBUILT)

# prepdecrypt
include $(CLEAR_VARS)
LOCAL_MODULE := prepdecrypt.sh
LOCAL_SRC_FILES := prepdecrypt.sh
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_STEM := prepdecrypt
LOCAL_MODULE_SUFFIX := .sh
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)/sbin
include $(BUILD_PREBUILT)

# static manifest for twrp
# includes only the hals required to get decryption to work
include $(CLEAR_VARS)
LOCAL_MODULE := twrp_manifest
ifeq ($(TARGET_KEYMASTER_V4),true)
LOCAL_SRC_FILES := twrp_manifest_km4.xml
else
LOCAL_SRC_FILES := twrp_manifest_km3.xml
endif
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_STEM := manifest
LOCAL_MODULE_SUFFIX := .xml
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_RECOVERY_ROOT_OUT)/vendor/etc/vintf
include $(BUILD_PREBUILT)
