//
//  LocationPitchViewController.m
//  LighthouseExample
//
//  Created by grinch on 15/08/2014.
//  Copyright (c) 2014 Jamgo. All rights reserved.
//

#import "LocationPitchViewController.h"
#import "AppDelegate.h"

@implementation LocationPitchViewController

- (IBAction)askForLocation:(id)sender
{
    //
    // You've just finished pitching to the user as to why your app needs to use location services. They now
    // have information to respond positively to the Location services authorization challenge.
    // Calling requestLocationAccess method will bring up the location authorization dialog.
    //
    Lighthouse *lighthouse = [(AppDelegate *) [UIApplication sharedApplication].delegate lighthouse];
    [lighthouse requestLocationAccess];
}

- (IBAction)logout:(id)sender
{
    //
    // When your user logs out, ensure that you are calling clearUserIdentifier, so that events generated
    // by the device are no longer attributed to that user
    //
    Lighthouse *lighthouse = [(AppDelegate *) [UIApplication sharedApplication].delegate lighthouse];
    [lighthouse clearUserIdentifier];
}

@end
