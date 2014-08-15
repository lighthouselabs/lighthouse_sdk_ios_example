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
    self.lighthouse = [Lighthouse initWithClientKey:@"<YOUR_CLIENT_KEY>"
                                          secretKey:@"<YOUR_SECRET_KEY>"
                                        environment:LH_UAT];
    return YES;
}


@end
