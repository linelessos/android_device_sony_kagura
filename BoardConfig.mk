#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2018 The LineageOS Project
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

# Inherit from common tone-common
-include device/sony/tone-common/BoardConfigCommon.mk

DEVICE_PATH := device/sony/kagura

# Assert
TARGET_OTA_ASSERT_DEVICE := kagura,kagura_dsds,F8331,F8332

# Kernel
TARGET_KERNEL_CONFIG := tone_kagura_defconfig

# Partitions
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 6197084160
BOARD_USERDATAIMAGE_PARTITION_SIZE := 23857184768

# Inherit cash
TARGET_USES_CASH := true
TARGET_USES_CASH_EXTENSION := true

# Inherit from the proprietary version
-include vendor/sony/kagura/BoardConfigVendor.mk
