#import <AudioToolbox/AudioToolbox.h>
%hook SBVolumeControl
//static BOOL isEnabled;

//NSDicitionary *bundleDefaults =[[NSUserDefaults standardUserDefaults] persistentDomainForName:@"com.cheaterstar.hapticvolprefs"];
//id isEnabled = [[bundleDefaults valueForKey:@"isEnabled"]]

//credit to iCrazeiOS
//isEnabled = [prefs objectForKey:@"isEnabled"] ? [[prefs objectForKey:@"isEnabled"] boolValue] : YES;

-(void)increaseVolume {
        %orig;
        // Checks if tweak is enabled
//        if ([isEnabled isEqual:@1]) {
                AudioServicesPlaySystemSound(1519);
//        }
}
-(void)decreaseVolume {
        %orig;
        // Checks if tweak is enabled
//        if ([isEnabled isEqual:@1]) {
                 AudioServicesPlaySystemSound(1519);
//       }
}
%end
