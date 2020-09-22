TARGET := iphone:clang:latest:7.0

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = HapticVolPrefs

HapticVolPrefs_FILES = VOLRootListController.m
HapticVolPrefs_FRAMEWORKS = UIKit
HapticVolPrefs_PRIVATE_FRAMEWORKS = Preferences
HapticVolPrefs_INSTALL_PATH = /Library/PreferenceBundles
HapticVolPrefs_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/HapticButtonsPrefs.plist$(ECHO_END)

