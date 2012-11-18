//
//  AlertManager.m
//  AOC1
//
//  Created by Will Saults on 11/18/12.
//  Copyright (c) 2012 UTVCA. All rights reserved.
//

#import "AlertManager.h"

@implementation AlertManager

static AlertManager *_sharedAlertManager = nil;

+(AlertManager *)sharedAlertManager {
    @synchronized([AlertManager class]) {
        if(!_sharedAlertManager) { // If the sharedAlertManager has not been created then create one.
            [AlertManager new]; // 'new' is shorthand for [[AlertManager alloc] init]. Useful if you dont need to initWithSomething:
        }
        return _sharedAlertManager; // Return that puppy.
    }
}

+(id)alloc {
    @synchronized([AlertManager class]) {
        NSAssert(_sharedAlertManager == nil, @"Tried to allocate another AlertManager singleton, oops.");
        _sharedAlertManager = [super alloc];
    }
    return _sharedAlertManager;
}

-(void)createAlertWithTitle:(NSString *)title andMessage:(NSString *)message {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title message:message delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
    [alert show];
}

-(void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex {
    NSLog(@"%@",[NSString stringWithFormat:@"Alert dismissed with buttonIndex: %d", buttonIndex]);
}

@end
