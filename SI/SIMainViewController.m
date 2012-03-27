//
//  SIMainViewController.m
//  SI
//
//  Created by Philippe Casgrain on 12-03-26.
//  Copyright (c) 2012 Philippe Casgrain. All rights reserved.
//

#import "SIMainViewController.h"
#import "SIUnit.h"

@interface SIMainViewController ()

@property (nonatomic, retain) SIUnit *unit;

@end

@implementation SIMainViewController

@synthesize unit = _unit;

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.unit = [[SIUnit alloc] init];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

#pragma mark - Flipside View

- (void)flipsideViewControllerDidFinish:(SIFlipsideViewController *)controller
{
    [self dismissModalViewControllerAnimated:YES];
}

- (IBAction)showInfo:(id)sender
{    
    SIFlipsideViewController *controller = [[SIFlipsideViewController alloc] initWithNibName:@"SIFlipsideViewController" bundle:nil];
    controller.delegate = self;
    controller.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentModalViewController:controller animated:YES];
}

@end
