#
# Copyright (C) 2011 The Android Open-Source Project
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

LOCAL_PATH := $(cal my-dir)

TARGET_SPECIFIC_HEADER_PATH := device/xiaomi/aries/include

TARGET_NO_RADIOIMAGE := true
TARGET_NO_BOOTLOADER := true

TARGET_BOARD_PLATFORM        := msm8960
TARGET_BOOTLOADER_BOARD_NAME := aries
TARGET_BOOTLOADER_NAME       := aries
TARGET_BOARD_INFO_FILE       := device/xiaomi/aries/board-info.txt

# Use MI-TWO
BOARD_USE_XIAOMI_MITWO_HARDWARE := true

# Flags
TARGET_GLOBAL_CFLAGS += -mfpu=neon-vfpv4 -mfloat-abi=softfp  -DQCOM_HARDWARE
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon-vfpv4 -mfloat-abi=softfp -DQCOM_HARDWARE
COMMON_GLOBAL_CFLAGS += -D__ARM_USE_PLD -D__ARM_CACHE_LINE_SIZE=64

# Architecture
TARGET_ARCH_VARIANT_CPU    := cortex-a9
TARGET_CPU_ABI             := armeabi-v7a
TARGET_CPU_ABI2            := armeabi
TARGET_CPU_SMP             := true
TARGET_CPU_VARIANT         := krait
TARGET_ARCH                := arm
TARGET_ARCH_VARIANT        := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
BOARD_USES_QCOM_HARDWARE   := true

# Krait optimizations
TARGET_USE_KRAIT_BIONIC_OPTIMIZATION := true
TARGET_USE_KRAIT_PLD_SET             := true
TARGET_KRAIT_BIONIC_PLDOFFS          := 10
TARGET_KRAIT_BIONIC_PLDTHRESH        := 10
TARGET_KRAIT_BIONIC_BBTHRESH         := 64
TARGET_KRAIT_BIONIC_PLDSIZE          := 64

BOARD_KERNEL_BASE      := 0x80200000
BOARD_KERNEL_PAGESIZE  := 2048
BOARD_KERNEL_CMDLINE   := console=ttyHSL0,115200,n8 androidboot.hardware=aries ehci-hcd.park=3 maxcpus=2
BOARD_MKBOOTIMG_ARGS   := --ramdisk_offset 0x02000000
TARGET_PREBUILT_KERNEL := device/xiaomi/aries/kernel/kernel

TARGET_RELEASETOOLS_EXTENSIONS := device/xiaomi/aries

# Wifi
BOARD_HAS_QCOM_WLAN              := true
BOARD_WLAN_DEVICE                := qcwcn
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_FW_PATH_STA          := "sta"
WIFI_DRIVER_FW_PATH_AP           := "ap"
BOARD_MITWO_READ_WLAN_MAC        := true

BOARD_EGL_CFG := device/xiaomi/aries/configs/egl.cfg

TARGET_QCOM_MEDIA_VARIANT   := caf
TARGET_QCOM_DISPLAY_VARIANT := caf
TARGET_QCOM_AUDIO_VARIANT   := aries

#Display
TARGET_USES_ION             := true
USE_OPENGL_RENDERER         := true
TARGET_USES_C2D_COMPOSITION := true
COMMON_GLOBAL_CFLAGS += -DNEW_ION_API

# Audio
BOARD_USES_ALSA_AUDIO:= true
TARGET_USES_QCOM_MM_AUDIO := true
TARGET_USES_QCOM_COMPRESSED_AUDIO := true
BOARD_HAVE_LOW_LATENCY_AUDIO := true
BOARD_AUDIO_EXPECTS_MIN_BUFFERSIZE := true
BOARD_USES_SEPERATED_VOICE_SPEAKER := true

# GPS
BOARD_HAVE_NEW_QC_GPS := true
#The below will be needed if we ever want to build GPS HAL from source
#TARGET_PROVIDES_GPS_LOC_API := true
#BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := $(TARGET_BOARD_PLATFORM)
#TARGET_NO_RPC := true

# Camera
TARGET_PROVIDES_CAMERA_HAL := true
COMMON_GLOBAL_CFLAGS += -DMR0_CAMERA_BLOB -DDISABLE_HW_ID_MATCH_CHECK -DQCOM_BSP_CAMERA_ABI_HACK

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BLUETOOTH_HCI_USE_MCT := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/xiaomi/aries/bluetooth

# Webkit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_RECOVERY_INITRC := device/xiaomi/aries/recovery/init.rc
BOARD_HAS_NO_SELECT_BUTTON := true

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 23068672 # 22M
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 23068672 # 22M
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 880803840 # 840M

BOARD_USERDATAIMAGE_PARTITION_SIZE := 6189744128 # 5.9G
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_MAX_PARTITIONS := 36
BOARD_WANTS_EMMC_BOOT := true

BOARD_USES_SECURE_SERVICES := true

BOARD_LIB_DUMPSTATE := libdumpstate.aries

RECOVERY_HAS_DUALSYSTEM_PARTITIONS := true
RECOVERY_NEEDS_VSYNC := true

PRODUCT_COPY_FILES += \
    device/xiaomi/aries/recovery.fstab:recovery/root/etc/recovery.fstab \
    device/xiaomi/aries/recovery/device.conf:recovery/root/res/device.conf \
    device/xiaomi/aries/recovery/sbin/stock:recovery/root/sbin/stock \
    device/xiaomi/aries/recovery/sbin/recovery.sh:recovery/root/sbin/recovery.sh

-include vendor/xiaomi/aries/BoardConfigVendor.mk


