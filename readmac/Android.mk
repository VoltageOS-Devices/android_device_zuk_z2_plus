LOCAL_PATH:= $(call my-dir)

ifeq ($(strip $(BOARD_HAS_QCOM_WLAN)),true)
include $(CLEAR_VARS)
LOCAL_MODULE             := readmac
LOCAL_MODULE_TAGS        := optional
LOCAL_PROPRIETARY_MODULE := true
LOCAL_SRC_FILES          := zuk_readmac.c
LOCAL_CFLAGS             += -Wall -Werror
LOCAL_SHARED_LIBRARIES   := liblog
include $(BUILD_EXECUTABLE)
endif