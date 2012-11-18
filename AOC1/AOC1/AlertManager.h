//
//  AlertManager.h
//  AOC1
//
//  Created by Will Saults on 11/18/12.
//  Copyright (c) 2012 UTVCA. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 AlertManager is a singleton class.
 **/
@interface AlertManager : NSObject <UIAlertViewDelegate>

/**
 Shared manager class method
 **/
+(AlertManager *)sharedAlertManager;

-(void)createAlertWithTitle:(NSString *)title andMessage:(NSString *)message;

@end
