//
//  ArrayStat.m
//  task1
//
//  Created by Artem Shambalev on 16.03.15.
//  Copyright (c) 2015 Artem Shambalev. All rights reserved.
//

#import "ArrayStat.h"

@implementation ArrayStat

@synthesize median = _median;
@synthesize derivation = _derivation;

-(ArrayStat*) initWithMedian:(NSNumber *) median andDerivation:(NSNumber*) derivation {
    _median = median;
    _derivation = derivation;
    return self;
}

@end
