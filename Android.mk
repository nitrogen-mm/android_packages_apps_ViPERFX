#
# Copyright (C) 2016 Nitrogen Project
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

# Install the prebuilt ViPERFX apk.

LOCAL_PATH := $(call my-dir)

#
# priv app
#
include $(CLEAR_VARS)
LOCAL_MODULE := ViPERFX
LOCAL_SRC_FILES := priv-app/$(LOCAL_MODULE).apk
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_PATH := $(TARGET_OUT_PRIV_APP)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_REQUIRED_MODULES := \
    libV4AJniUtils \
    libv4a_fx_ics
include $(BUILD_PREBUILT)

#
# libs
#
include $(CLEAR_VARS)
LOCAL_MODULE := libV4AJniUtils
LOCAL_SRC_FILES := lib/$(LOCAL_MODULE).so
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/lib
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libv4a_fx_ics
LOCAL_SRC_FILES := lib/soundfx/$(LOCAL_MODULE).so
LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR)/lib/soundfx
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
include $(BUILD_PREBUILT)