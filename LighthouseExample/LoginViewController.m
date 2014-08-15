//
//  LoginViewController.m
//  LighthouseExample
//
//  Created by grinch on 15/08/2014.
//  Copyright (c) 2014 Jamgo. All rights reserved.
//

#import "LoginViewController.h"
#import "AppDelegate.h"

@interface LoginViewController ()

@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *spinner;
@property (weak, nonatomic) IBOutlet UIButton *login;

@end

@implementation LoginViewController

- (IBAction)login:(id)sender
{
    //
    // Simulate user logging into the app
    //
    self.login.hidden = YES;
    self.spinner.hidden = NO;
    [self.spinner startAnimating];
    
    NSDictionary *userModel = @{@"username" : @"tester@testing.com"};
    [self performSelector:@selector(userHasJustLoggedIn:) withObject:userModel afterDelay:1.0f];
}

- (void)userHasJustLoggedIn:(NSDictionary *)userObject
{
    //
    // User has just logged into the app, we now have an identifier to send to Lighthouse.
    // You can send an email or any other unique identifier, to help you refer to that user
    // later in your systems.
    //
    Lighthouse *lighthouse = [(AppDelegate *) [UIApplication sharedApplication].delegate lighthouse];
    [lighthouse setUserIdentifier:userObject[@"username"]];
    
    
    
    [self performSegueWithIdentifier:@"FinishedLogingIn" sender:self];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.spinner.hidden = YES;
}

@end
