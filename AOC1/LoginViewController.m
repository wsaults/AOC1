//
//  LoginViewController.m
//  AOC1
//
//  Created by Will Saults on 11/18/12.
//  Copyright (c) 2012 UTVCA. All rights reserved.
//

#import "LoginViewController.h"
#import "AlertManager.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Actions
-(IBAction)loginWithFacebook:(id)sender {
    [[AlertManager sharedAlertManager] createAlertWithTitle:@"Er... um..." andMessage:@"Sry, cannot login with Facebook yet."];
}

-(IBAction)loginWithTwitter:(id)sender {
    
}

-(IBAction)loginWithSpotify:(id)sender {
    
}

-(IBAction)justShowMeTheAssignment:(id)sender {
    
}

@end
