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
@synthesize power = _power;
@synthesize ten = _ten;
@synthesize name = _name;
@synthesize symbol = _symbol;

- (void)newCard:(NSTimer*)timer
{
    const float kAnimationDuration = 0.25;

    [self.unit randomize];
    self.power.text = [self.unit randomPower];
    self.name.text = [self.unit randomName];
    self.symbol.text = [self.unit randomSymbol];

    [UIView beginAnimations:NULL context:NULL];
    [UIView setAnimationDuration:kAnimationDuration];
    [self.power setAlpha:0];
    [self.ten setAlpha:0];
    [self.name setAlpha:0];
    [self.symbol setAlpha:0];
    switch ([self.unit randomChoice])
    {
        case 1:
            [self.name setAlpha:1];
            break;
        case 2:
            [self.symbol setAlpha:1];
            break;
        default:
            [self.power setAlpha:1];
            [self.ten setAlpha:1];
            break;
    }
    [UIView commitAnimations];
}

- (void)nextCard:(NSTimer*)timer
{
    const float kAnimationDuration = 0.5;

    [UIView beginAnimations:NULL context:NULL];
    [UIView setAnimationDuration:kAnimationDuration];
    [self.power setAlpha:0];
    [self.ten setAlpha:0];
    [self.name setAlpha:0];
    [self.symbol setAlpha:0];
    [UIView commitAnimations];

    [NSTimer scheduledTimerWithTimeInterval:kAnimationDuration target:self selector:@selector(newCard:) userInfo:nil repeats:NO];
}

- (void)showAnswer
{
    const float kAnimationDuration = 0.5;
    const float kWaitDuration = 1.0;
    
    [UIView beginAnimations:NULL context:NULL];
    [UIView setAnimationDuration:kAnimationDuration];
    [self.power setAlpha:1];
    [self.ten setAlpha:1];
    [self.name setAlpha:1];
    [self.symbol setAlpha:1];
    [UIView commitAnimations];
    
    [NSTimer scheduledTimerWithTimeInterval:kWaitDuration target:self selector:@selector(nextCard:) userInfo:nil repeats:NO];
}



- (void)viewDidLoad
{
    [super viewDidLoad];
	self.unit = [[SIUnit alloc] init];
    [self nextCard:nil];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIDeviceOrientationPortrait);
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self showAnswer];
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
