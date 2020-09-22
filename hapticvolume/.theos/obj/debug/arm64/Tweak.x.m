#line 1 "Tweak.x"
#import "Tweak.h"
#import <AudioToolbox/AudioToolbox.h>


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class SBVolumeControl; 


#line 4 "Tweak.x"
static void (*_logos_orig$tweak$SBVolumeControl$increaseVolume)(_LOGOS_SELF_TYPE_NORMAL SBVolumeControl* _LOGOS_SELF_CONST, SEL); static void _logos_method$tweak$SBVolumeControl$increaseVolume(_LOGOS_SELF_TYPE_NORMAL SBVolumeControl* _LOGOS_SELF_CONST, SEL); static void (*_logos_orig$tweak$SBVolumeControl$decreaseVolume)(_LOGOS_SELF_TYPE_NORMAL SBVolumeControl* _LOGOS_SELF_CONST, SEL); static void _logos_method$tweak$SBVolumeControl$decreaseVolume(_LOGOS_SELF_TYPE_NORMAL SBVolumeControl* _LOGOS_SELF_CONST, SEL); 


static void _logos_method$tweak$SBVolumeControl$increaseVolume(_LOGOS_SELF_TYPE_NORMAL SBVolumeControl* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {

	_logos_orig$tweak$SBVolumeControl$increaseVolume(self, _cmd);
	preferencesChanged();
	if(enabled){
		if(self._effectiveVolume == 1 && biggerVibration){
			AudioServicesPlaySystemSound(1521);
		} else if(1 == 1){
			if(tapticStrength == 0){
				AudioServicesPlaySystemSound(1519);
			} else if(tapticStrength == 1){
				AudioServicesPlaySystemSound(1520);
			} else if(tapticStrength == 2){
				AudioServicesPlaySystemSound(1521);
			} else {
				AudioServicesPlaySystemSound(1519);
			}
		} else {
			vibrate(0.025, 0.05, 1);
		}
	}
}

static void _logos_method$tweak$SBVolumeControl$decreaseVolume(_LOGOS_SELF_TYPE_NORMAL SBVolumeControl* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {

	_logos_orig$tweak$SBVolumeControl$decreaseVolume(self, _cmd);
	preferencesChanged();
	if(enabled){
		if(self._effectiveVolume == 0 && biggerVibration){
			AudioServicesPlaySystemSound(1521);
		} else if(1 == 1){
			if(tapticStrength == 0){
				AudioServicesPlaySystemSound(1519);
			} else if(tapticStrength == 1){
				AudioServicesPlaySystemSound(1520);
			} else if(tapticStrength == 2){
				AudioServicesPlaySystemSound(1521);
			} else {
				AudioServicesPlaySystemSound(1519);
			}
		} else {
			vibrate(0.025, 0.05, 1);
		}
	}
}




static __attribute__((constructor)) void _logosLocalCtor_9a0ae2bb(int __unused argc, char __unused **argv, char __unused **envp) {
	preferencesChanged();
	{Class _logos_class$tweak$SBVolumeControl = objc_getClass("SBVolumeControl"); { MSHookMessageEx(_logos_class$tweak$SBVolumeControl, @selector(increaseVolume), (IMP)&_logos_method$tweak$SBVolumeControl$increaseVolume, (IMP*)&_logos_orig$tweak$SBVolumeControl$increaseVolume);}{ MSHookMessageEx(_logos_class$tweak$SBVolumeControl, @selector(decreaseVolume), (IMP)&_logos_method$tweak$SBVolumeControl$decreaseVolume, (IMP*)&_logos_orig$tweak$SBVolumeControl$decreaseVolume);}}
}
