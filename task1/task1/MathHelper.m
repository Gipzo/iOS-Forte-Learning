//
//  MathHelper.m
//  task1
//
//  Created by Artem Shambalev on 16.03.15.
//  Copyright (c) 2015 Artem Shambalev. All rights reserved.
//
#import "MathHelper.h"

@implementation MathHelper

+(NSNumber * ) getMedian:(NSArray* )array {
    NSNumber* median;
    
    array = (NSMutableArray*)[array sortedArrayUsingSelector:@selector(compare:)];
    if ([array count] % 2 == 0) {
        median = [NSNumber numberWithInt:
                  ([array[[array count]/2] intValue]+[array[[array count]/2+1] intValue])/2
                  ];
    }else{
        median = array[[array count]/2];
    }
    return median;
}

+( ArrayStat*) process:(NSMutableArray *)array {
    
    NSNumber* median = [self getMedian:array];
    
    __block NSMutableArray* derivationArray = [[NSMutableArray alloc] init];
    [array enumerateObjectsUsingBlock:^(NSNumber* obj, NSUInteger idx, BOOL *stop) {
        [derivationArray addObject:[NSNumber numberWithInt:abs([obj intValue]-[median intValue])]];
    }];
    
    NSNumber* derivation = [self getMedian:derivationArray];
    
    ArrayStat* stat = [[ArrayStat alloc] initWithMedian:median andDerivation:derivation];
    
    return stat;
}
@end
