# Copyright (C) 2014-2015 The CyanogenMod Project
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

# framework first
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

 # then device
$(call inherit-product, device/oppo/find7s/find7s.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_NAME := cm_find7s
PRODUCT_DEVICE := find7s
PRODUCT_BRAND := OPPO
PRODUCT_MANUFACTURER := OPPO
PRODUCT_MODEL := Find7

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=5.1.1/LMY47V/1441693976:user/release-keys \
    PRIVATE_BUILD_DESC="msm8974-user 5.1.1 LMY47V 153 release-keys" \
    TARGET_DEVICE="FIND7"
