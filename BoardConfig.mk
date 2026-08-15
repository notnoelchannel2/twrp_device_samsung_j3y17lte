#
# Copyright (C) 2022 TeamWin Recovery Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

TARGET_OTA_ASSERT_DEVICE := j3y17lte,j3y17lteser,j3y17ltexx

LOCAL_PATH := device/samsung/j3y17lte

# Platform
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_ABI_LIST_32_BIT := armeabi-v7a,armeabi
TARGET_CPU_VARIANT := cortex-a15
TARGET_CPU_SMP := true
TARGET_BOARD_PLATFORM        := exynos5
TARGET_BOOTLOADER_BOARD_NAME := universal7570

# Kernel
TARGET_PREBUILT_KERNEL   := $(LOCAL_PATH)/prebuilt/zImage
TARGET_PREBUILT_DTB      := $(LOCAL_PATH)/prebuilt/dtb
BOARD_KERNEL_CMDLINE     :=	buildvariant=eng
BOARD_KERNEL_BASE        := 0x10000000
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_KERNEL_PAGESIZE    := 2048
BOARD_MKBOOTIMG_ARGS     := --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --dtb $(LOCAL_PATH)/prebuilt/dtb

# Filesystem
BOARD_BOOTIMAGE_PARTITION_SIZE	   := 0x2000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x2600000
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 0xAC000000
BOARD_CACHEIMAGE_PARTITION_SIZE	   := 0xC800000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x2DE000000
BOARD_HAS_LARGE_FILESYSTEM         := true
TARGET_USERIMAGES_USE_EXT4         := true
TARGET_USERIMAGES_USE_F2FS         := true

# Display
TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_HEIGHT := 1280

# TWRP specific build flags
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_PIXEL_FORMAT := "ABGR_8888"
TW_BRIGHTNESS_PATH := "/sys/devices/14800000.dsim/backlight/panel/brightness"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 162
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_EXCLUDE_SUPERSU := true
TW_INCLUDE_NTFS_3G := true
TW_EXTRA_LANGUAGES := true
TW_DEVICE_VERSION	:= 0_notnoelchannel

