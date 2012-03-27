//
//  SIMainViewController.h
//  SI
//
//  Created by Philippe Casgrain on 12-03-26.
//  Copyright (c) 2012 Philippe Casgrain. All rights reserved.
//

#import "SIFlipsideViewController.h"

@interface SIMainViewController : UIViewController <SIFlipsideViewControllerDelegate>

@property (strong, nonatomic) IBOutlet UILabel *power;
@property (strong, nonatomic) IBOutlet UILabel *ten;
@property (strong, nonatomic) IBOutlet UILabel *name;
@property (strong, nonatomic) IBOutlet UILabel *symbol;


- (IBAction)showInfo:(id)sender;

@end
