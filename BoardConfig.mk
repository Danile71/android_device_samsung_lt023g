# Copyright (C) 2013 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#


# Target info
LOCAL_PATH                           := device/samsung/lt023g
USE_CAMERA_STUB := true
BOARD_HAS_NO_SELECT_BUTTON := true

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_BOARD_PLATFORM := mrvl
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a9
TARGET_CPU_SMP := true
MALLOC_SVELTE := true
BLOCK_BASED_OTA 		     := false
TARGET_BOARD_SUFFIX                  := _32
TARGET_USES_NEW_ION_API              :=true
TARGET_UNIFIED_DEVICE                := true
# Camera
TARGET_PROVIDES_CAMERA_HAL           := true
USE_DEVICE_SPECIFIC_CAMERA           := true
TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS := true
TARGET_HAS_LEGACY_CAMERA_HAL1        := true
TARGET_TS_MAKEUP := true



TARGET_BOOTLOADER_BOARD_NAME := PXA988
ARCH_ARM_HAVE_TLS_REGISTER := true


# Not Yet
#TARGET_BOARD_INFO_FILE := device/samsung/lt023g/board-info.txt

# Kernel
TARGET_KERNEL_CROSS_COMPILE_PREFIX   := arm-linux-androideabi-
KERNEL_TOOLCHAIN                     := "/home/danil_e71/linaro/arm-linux-androideabi-4.6/bin"
TARGET_KERNEL_SOURCE := kernel/samsung/lt02
TARGET_KERNEL_CONFIG := pxa986_lt02wifi_werewolf_defconfig
TARGET_KERNEL_VARIANT_CONFIG := pxa986_lt023g_defconfig
BOARD_KERNEL_CMDLINE := androidboot.selinux=permissive androidboot.hardware=pxa988
BOARD_KERNEL_BASE := 0x10000000
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01000000
BOARD_KERNEL_PAGESIZE := 2048
TARGET_KERNEL_SELINUX_CONFIG         := selinux_defconfig

#Kernel Modules
#SAMSUNG_MODULES:
#	make -C kernel/samsung/lt02_modules/ clean_modules KERNELDIR=$(KERNEL_OUT) CROSS_COMPILE=$(ANDROID_TOOLCHAIN)/arm-linux-androideabi-
#	make -C kernel/samsung/lt02_modules/ modules CFLAGS_MODULE=-fno-pic KERNELDIR=$(KERNEL_OUT) CROSS_COMPILE=$(ANDROID_TOOLCHAIN)/arm-linux-androideabi-
#	mkdir -p out/target/product/lt023g/recovery/root/lib/modules
#	cp $(KERNEL_OUT)/drivers/exfat/*.ko out/target/product/lt023g/recovery/root/lib/modules/
#	find kernel/samsung/lt02_modules/ -type f -name *.ko -exec cp {} $(KERNEL_MODULES_OUT) \;

#TARGET_KERNEL_MODULES += SAMSUNG_MODULES
    
# Partitions
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 12582912
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 12582912
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1507852288
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5775556608
BOARD_FLASH_BLOCK_SIZE := 4096
BOARD_UMS_LUNFILE := "/sys/class/android_usb/f_mass_storage/lun0/file"
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_MISC_PARTITION := true

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
TARGET_RECOVERY_FSTAB := device/samsung/lt023g/rootdir/fstab.pxa988
RECOVERY_FSTAB_VERSION := 2
#TARGET_RECOVERY_INITRC := device/samsung/lt023g/recovery/root/init.recovery.rc
BOARD_RECOVERY_SWIPE := true


# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/lt023g/bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_MRVL := true
MRVL_WIRELESS_DAEMON_API := true


#WiFi
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mrvl
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_mrvl
BOARD_WLAN_DEVICE := mrvl8787
BOARD_WLAN_VENDOR := MRVL
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/sd8xxx.ko"
WIFI_DRIVER_MODULE_NAME	:= "sd8xxx"
WIFI_DRIVER_MODULE_ARG := "firmware_path=/system/etc/firmware/mrvl/sd8777_uapsta.bin cfg80211_wext=12 sta_name=wlan uap_name=wlan wfd_name=p2p fw_name=mrvl/sd8777_uapsta.bin"
WIFI_DRIVER_FW_PATH_PARAM := "/sys/module/sd8xxx/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA := "/system/etc/firmware/mrvl/sd8777_uapsta.bin"
WIFI_DRIVER_FW_PATH_AP := "/system/etc/firmware/mrvl/sd8777_uapsta.bin"
WIFI_DRIVER_FW_PATH_P2P := "/system/etc/firmware/mrvl/sd8777_uapsta.bin"
WIFI_SDIO_IF_DRIVER_MODULE_PATH := "/system/lib/modules/mlan.ko"
WIFI_SDIO_IF_DRIVER_MODULE_NAME := "mlan"
WIFI_SDIO_IF_DRIVER_MODULE_ARG := ""
MRVL_WIRELESS_DAEMON_API := true

# Vold
BOARD_VOLD_MAX_PARTITIONS := 17
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_DISC_HAS_MULTIPLE_MAJORS := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/f_mass_storage/lun%d/file"

# Graphics
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3


TARGET_USES_OVERLAY := true
TARGET_CONTINUOUS_SPLASH_ENABLED     := true
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
MAX_VIRTUAL_DISPLAY_DIMENSION := 4096
TARGET_USES_HWC2 = false
VSYNC_EVENT_PHASE_OFFSET_NS := 0
#Enable marvell interface in SurfaceFlinger
MRVL_INTERFACE_ANIMATION := true
#ENABLE_HWC_GC_PATH := true
BOARD_USES_HWCOMPOSER := true
#Launch DMS in SurfaceFlinger process
MRVL_LAUNCH_DMS_IN_SURFACEFLINGER := true
BOARD_HAVE_PIXEL_FORMAT_INFO := true

# Boot animation
TARGET_SCREEN_WIDTH                  := 600
TARGET_SCREEN_HEIGHT                 := 1024
USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := device/samsung/lt023g/configs/egl.cfg
BOARD_EGL_NEEDS_LEGACY_FB := true
MAX_EGL_CACHE_KEY_SIZE               := 12*1024
MAX_EGL_CACHE_SIZE                   := 2048*1024
BOARD_EGL_WORKAROUND_BUG_10194508 := true
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
# VSYNC_EVENT_PHASE_OFFSET_NS := 0
BOARD_HAVE_PIXEL_FORMAT_INFO := true
BOARD_USE_BGRA_8888 := true
BOARD_USE_MHEAP_SCREENSHOT := true
BOARD_USES_CYANOGEN_HARDWARE := true

# Audio
BOARD_USES_ALSA_AUDIO := true

# Webkit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/lt023g/bluetooth
#BOARD_HAVE_BLUETOOTH_BCM := true
USE_BLUETOOTH_SAP := false

# Charging mode
#BOARD_CHARGER_RES := device/samsung/lt023g/res/charger
BOARD_CHARGING_MODE_BOOTING_LPM := true

TARGET_SPECIFIC_HEADER_PATH := device/samsung/lt023g/include

# SELinux
include device/qcom/sepolicy/sepolicy.mk

BOARD_SEPOLICY_DIRS += \
    device/samsung/lt023g/sepolicy

#TWRP
DEVICE_RESOLUTION := 1024x600
RECOVERY_SDCARD_ON_DATA := true
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
BOARD_HAS_NO_REAL_SDCARD := true
SP1_NAME := "efs"
SP1_BACKUP_METHOD := files
TW_NO_USB_STORAGE := true
TW_INCLUDE_FUSE_EXFAT := true
HAVE_SELINUX := true
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_MAX_BRIGHTNESS := 255
TW_BRIGHTNESS_PATH := /sys/class/backlight/panel/brightness

TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS := true



TARGET_HARDWARE_3D := false
BOARD_USES_MRVL_HARDWARE := true

BOARD_ENABLE_MULTI_DISPLAYS := true

#Generic config
MRVL_ION := true

# The above lines are almost the same as Brownstone.
# MMP3 Special
BOARD_USE_VIVANTE_GRALLOC := true
HDMI_SUPPORT_3D := true
MRVL_INTERFACE_ANIMATION := true
MRVL_LAUNCH_DMS_IN_SURFACEFLINGER := true
INPUT_TOUCH_DRIVER := TOUCH_LT

# Compatibility with pre-kitkat Sensor HALs
SENSORS_NEED_SETRATE_ON_ENABLE := true

