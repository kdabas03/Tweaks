ARCHS = arm64 arm64e
THEOS_DEVICE_IP = 10.134.1.100
export SYSROOT = $(THEOS)/sdks/iPhoneOS13.5.sdk
INSTALL_TARGET_PROCESSES = SpringBoard
$(TWEAK_NAME)_FRAMEWORKS = UIKit

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = HapticVolume

HapticVolume_FILES = Tweak.x
HapticVolume_CFLAGS = -fobjc-arc
$(TWEAK_NAME)_FRAMEWORKS = AudioToolbox
include $(THEOS_MAKE_PATH)/tweak.mk
##SUBPROJECTS += hapticvolprefs
##include $(THEOS_MAKE_PATH)/aggregate.mk
