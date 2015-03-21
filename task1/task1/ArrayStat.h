//
//  ArrayStat.h
//  task1
//
//  Created by Artem Shambalev on 16.03.15.
//  Copyright (c) 2015 Artem Shambalev. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ArrayStat : NSObject
@property (readonly) NSNumber* median;
@property (readonly) NSNumber* derivation;

-(ArrayStat*) initWithMedian:(NSNumber *) median andDerivation:(NSNumber*) derivation;

@end
