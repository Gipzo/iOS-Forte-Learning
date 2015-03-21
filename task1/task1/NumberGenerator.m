//
//  NumberGenerator.m
//  task1
//
//  Created by Artem Shambalev on 16.03.15.
//  Copyright (c) 2015 Artem Shambalev. All rights reserved.
//
#include <stdlib.h>
#import "NumberGenerator.h"

@implementation NumberGenerator

-(NSArray *)generate:(int)length {
    NSMutableArray* array = [[NSMutableArray alloc] init];    
    for (int i=0; i<length; i++) {
        [array addObject:[NSNumber numberWithInt:rand() % 100]];
    }
    return array;
}


@end
