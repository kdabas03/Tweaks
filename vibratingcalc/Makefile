ARCHS = arm64 arm64e
THEOS_DEVICE_IP = 10.134.1.100
export SYSROOT = $(THEOS)/sdks/iPhoneOS13.5.sdk
TARGET := iphone:clang:latest:7.0
INSTALL_TARGET_PROCESSES = SpringBoard


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = VibratingCalc

VibratingCalc_FILES = Tweak.x
VibratingCalc_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
