/*
 * Version for iOS © 2015–2020 YANDEX
 *
 * You may not use this file except in compliance with the License.
 * You may obtain a copy of the License at https://yandex.com/legal/mobileads_sdk_agreement/
 */

#import "AppDelegate.h"
#import <YandexMobileAds/YandexMobileAds.h>

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [YMAMobileAds enableLogging];

    return YES;
}

@end
