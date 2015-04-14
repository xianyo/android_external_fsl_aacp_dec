ifeq ($(PREBUILT_FSL_IMX_CODEC),true)

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_PREBUILT_LIBS := \
		lib_aacplus_dec_v2_arm11_elinux.so \
        lib_aacplusd_wrap_arm12_elinux_android.so

LOCAL_MODULE_TAGS := eng
include $(BUILD_MULTI_PREBUILT)

endif
