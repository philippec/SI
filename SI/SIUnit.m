//
//  SIUnit.m
//  SI
//
//  Created by Philippe Casgrain on 12-03-26.
//  Copyright (c) 2012 Philippe Casgrain. All rights reserved.
//

#import "SIUnit.h"

@implementation SIUnit

@synthesize units = _units;
@synthesize randomIndex = _randomIndex;

- (id)init
{
    if ((self = [super init]))
    {
        _units = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"units" ofType:@"plist"]];
        [self randomize];
    }

    return self;
}


- (NSString*)randomPower
{
    NSDictionary *unit = [self.units objectAtIndex:self.randomIndex];
    return [[unit valueForKey:@"power"] stringValue];
}

- (NSString*)randomSymbol;
{
    NSDictionary *unit = [self.units objectAtIndex:self.randomIndex];
    return [unit valueForKey:@"symbol"];
}

- (NSString*)randomName;
{
    NSDictionary *unit = [self.units objectAtIndex:self.randomIndex];
    return [unit valueForKey:@"name"];
}

- (int)randomChoice;
{
    return arc4random() % 3;
}

- (void)randomize
{
    self.randomIndex = arc4random() % [self.units count];
}


@end
