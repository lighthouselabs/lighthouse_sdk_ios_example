//
//  AppDelegate.m
//  LighthouseExample
//
//  Created by grinch on 15/08/2014.
//  Copyright (c) 2014 Jamgo. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    //
    // Initialise Lighthouse with client key and secret provided. Make sure you are using appropriate keys
    // for the environment your are running in. Lighthouse object needs to be created inside AppDelegate, so it is
    // retained for the whole time your app is running.
    //
#ifdef DEBUG
    self.lighthouse = [Lighthouse initWithClientKey:@"<YOUR_UAT_CLIENT_KEY>"
                                          secretKey:@"<YOUR_UAT_SECRET_KEY>"
                                        environment:LH_UAT];
#else
    self.lighthouse = [Lighthouse initWithClientKey:@"<YOUR_PROD_CLIENT_KEY>"
                                          secretKey:@"<YOUR_PROD_SECRET_KEY>"
                                        environment:LH_PROD];
#endif

    //
    // If you are using Lighthouse to send notifications you need to ensure the user has given permission for notifications (iOS 8 only)
    //
    if ([UIApplication instancesRespondToSelector:@selector(registerUserNotificationSettings:)]){
        [application registerUserNotificationSettings:[UIUserNotificationSettings settingsForTypes:UIUserNotificationTypeAlert|UIUserNotificationTypeBadge|UIUserNotificationTypeSound categories:nil]];
    }

    return YES;
}


@end
