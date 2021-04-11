#
# This is for TWRP Recovery
#

# user interface
TW_THEME := portrait_hdpi
TW_NO_SCREEN_BLANK := true
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 255
TW_NEW_ION_HEAP := true
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_SCREEN_BLANK_ON_BOOT := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"

# timekeep
TARGET_RECOVERY_QCOM_RTC_FIX := true

# init
TW_EXCLUDE_DEFAULT_USB_INIT := true

# features
TW_USE_TOOLBOX := true
TW_EXCLUDE_SUPERSU := true
TW_EXTRA_LANGUAGES := true

# CPU
TW_CUSTOM_CPU_TEMP_PATH := /sys/class/thermal/thermal_zone4/tem

# storage
RECOVERY_SDCARD_ON_DATA := true
TW_INCLUDE_FUSE_EXFAT := true
TW_FLASH_FROM_STORAGE := true
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TARGET_NO_SEPARATE_RECOVERY := true

# crypto
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_CRYPTO_FBE := true
TW_INCLUDE_FBE_METADATA_DECRYPT := true
TW_CRYPTO_FS_TYPE := "ext4"
TW_CRYPTO_MNT_POINT := "/data"
TW_CRYPTO_REAL_BLKDEV := "/dev/block/bootdevice/by-name/userdata"
TW_CRYPTO_FS_OPTIONS := "nosuid,nodev,barrier=1,noauto_da_alloc,discard"
TW_CRYPTO_FS_FLAGS := "0x00000406"
TW_CRYPTO_KEY_LOC := "footer"
TARGET_CRYPTFS_HW_PATH += vendor/qcom/opensource/cryptfs_hw

# init
PRODUCT_PACKAGES += \
    twrp.fstab \
    init.recovery.twrp \
    init.recovery.usb \
    init.recovery.qcom \
    prepdecrypt.sh \
    init.recovery.keymaster \
    twrp_manifest
