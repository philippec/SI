//
//  SIAppDelegate.h
//  SI
//
//  Created by Philippe Casgrain on 12-03-26.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SIMainViewController;

@interface SIAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) SIMainViewController *mainViewController;

@end
