//
//  SIFlipsideViewController.h
//  SI
//
//  Created by Philippe Casgrain on 12-03-26.
//  Copyright (c) 2012 Philippe Casgrain. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SIFlipsideViewController;

@protocol SIFlipsideViewControllerDelegate
- (void)flipsideViewControllerDidFinish:(SIFlipsideViewController *)controller;
@end

@interface SIFlipsideViewController : UIViewController

@property (assign, nonatomic) id <SIFlipsideViewControllerDelegate> delegate;

- (IBAction)done:(id)sender;

@end
