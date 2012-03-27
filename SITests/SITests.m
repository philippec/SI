//
//  SITests.m
//  SITests
//
//  Created by Philippe Casgrain on 12-03-26.
//  Copyright (c) 2012 Philippe Casgrain. All rights reserved.
//

#import "SITests.h"
#import "SIUnit.h"

@implementation SITests

@synthesize units = _units;

- (void)setUp
{
    [super setUp];
    
    self.units = [[SIUnit alloc] init];
}

- (void)tearDown
{
    self.units = nil;
    
    [super tearDown];
}

- (void)testUnits
{
    STAssertNotNil(self.units, @"unable to create units");
}

@end
