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

- (id)init
{
    if ((self = [super init]))
    {
        _units = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"units" ofType:@"plist"]];
    }

    return self;
}

@end
