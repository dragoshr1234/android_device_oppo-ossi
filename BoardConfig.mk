DEVICE_PATH := device/oplus/ossi

# For building with TWRP minimal manifest
ALLOW_MISSING_DEPENDENCIES := true

# Architecture (arm64)
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

# Assert
TARGET_OTA_ASSERT_DEVICE := ossi
TARGET_COPY_OUT_VENDOR := vendor

# Board configs
BOARD_KERNEL_CMDLINE := console=null androidboot.hardware=mtk androidboot.usbcontroller=extcon.usb video=vfb:640x400,bpp=32,memsize=3072000 service_locator.enable=1 printk.devkmsg=on firmware_class.path=/vendor/firmware
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEMIMAGE_PARTITION_TYPE := ext4
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USES_MKE2FS := true
BOARD_KERNEL_BASE := 0x40078000
BOARD_PAGE_SIZE := 2048
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_RAMDISK_OFFSET := 0x11b88000
BOARD_SECOND_OFFSET := 0xbff88000
BOARD_TAGS_OFFSET := 0x17288000
BOARD_RECOVERY_DTBO_SIZE := 606137
BOARD_RECOVERY_DTBO_OFFSET := 46835712
BOARD_HEADER_SIZE := 1660
BOARD_DTB_SIZE := 148476
BOARD_DTB_OFFSET := 0x17288000
BOARD_FLASH_BLOCK_SIZE := 262144
TARGET_BOARD_PLATFORM := mt6779
BOARD_NAME := k79v1_64
BOARD_BOOTIMG_HEADER_VERSION := 2
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 81788928
BOARD_BOOTIMAGE_PARTITION_SIZE     := 100663296
BOARD_DTBOIMAGE_PARTITION_SIZE     := 25165824
BOARD_SUPER_PARTITION_GROUPS := main
BOARD_SUPER_PARTITION_SIZE := 7730906700
BOARD_MAIN_SIZE := 7730906700
BOARD_MAIN_PARTITION_LIST := system odm vendor product
TARGET_SUPPORTS_64_BIT_APPS := true

# Prebuilt files
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image.gz
BOARD_KERNEL_IMAGE_NAME := Image.gz
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/dtb.img
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img
BOARD_INCLUDE_RECOVERY_DTBO := true

# Kernel: mkbootimgs args
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --pagesize $(BOARD_KERNEL_PAGESIZE)
BOARD_MKBOOTIMG_ARGS += --dtb $(TARGET_PREBUILT_DTB)
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOTIMG_HEADER_VERSION)

# Other props
PLATFORM_VERSION := 16.1.0
PLATFORM_SECURITY_PATCH := 2099-12-31
VENDOR_SECURITY_PATCH := 2099-12-31
ENABLE_CPUSETS := true
ENABLE_SCHEDBOOST := true
TARGET_NO_BOOTLOADER := true
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
BOARD_HAS_NO_SELECT_BUTTON := true
RECOVERY_SDCARD_ON_DATA := true
LZMA_RAMDISK_TARGETS := recovery

# TWRP Configuration
TW_THEME := portrait_hdpi
TW_SCREEN_BLANK_ON_BOOT := true
TW_NO_REBOOT_BOOTLOADER := true
TW_NO_CPU_TEMP := true
TW_INCLUDE_CRYPTO := false
TW_INCLUDE_CRYPTO_FBE := false
BOARD_USES_METADATA_PARTITION := false
TW_INCLUDE_FBE_METADATA_DECRYPT := false
TW_EXTRA_LANGUAGES := true
TW_SCREEN_BLANK_ON_BOOT := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_NO_REBOOT_BOOTLOADER := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_NO_EXFAT_FUSE := true
TW_Y_OFFSET := 142
TW_H_OFFSET := -142
TW_CUSTOM_CPU_TEMP_PATH := /sys/class/thermal/thermal_zone17/temp
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel0-backlight/brightness"
TW_MAX_BRIGHTNESS := 365
TW_DEFAULT_BRIGHTNESS := 219
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true


