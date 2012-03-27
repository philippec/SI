//
//  SIUnit.h
//  SI
//
//  Created by Philippe Casgrain on 12-03-26.
//  Copyright (c) 2012 Philippe Casgrain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SIUnit : NSObject

@property (nonatomic, retain) NSArray *units;
@property (nonatomic, assign) int randomIndex;

- (NSString*)randomPower;
- (NSString*)randomSymbol;
- (NSString*)randomName;
- (int)randomChoice;
- (void)randomize;

@end
