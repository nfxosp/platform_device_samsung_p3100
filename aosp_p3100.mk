#
# Copyright 2013 The Android Open-Source Project
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

# Use 44.1 kHz UI sounds
$(call inherit-product-if-exists, frameworks/base/data/sounds/AudioPackage13.mk)

# Inherit some common Rom stuff
$(call inherit-product, vendor/aosp/config/common.mk)

$(call inherit-product, device/samsung/p3100/full_p3100.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := p3100
PRODUCT_NAME := aosp_p3100
PRODUCT_BRAND := samsung
PRODUCT_MODEL := GT-P3100
PRODUCT_MANUFACTURER := samsung

#Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=espressorfxx \
    TARGET_DEVICE=espressorf \
    BUILD_FINGERPRINT="samsung/espressorfxx/espressorf:4.2.2/JDQ39/P3100XWDNA1:user/release-keys" \
    PRIVATE_BUILD_DESC="espressorfxx-user 4.2.2 JDQ39 P3100XWDNA1 release-keys"
