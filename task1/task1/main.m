//
//  main.m
//  task1
//
//  Created by Artem Shambalev on 16.03.15.
//  Copyright (c) 2015 Artem Shambalev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ArrayStat.h"
#import "NumberGenerator.h"
#import "MathHelper.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NumberGenerator* generator = [[NumberGenerator alloc] init];
        
        printf("Input array size: ");
        int arrayLength = 5;
        scanf("%d", &arrayLength);
        
        NSArray* array = [generator generate:arrayLength];
        
        printf("Generated array is: \n");
        [array enumerateObjectsUsingBlock:^(NSNumber* obj, NSUInteger idx, BOOL *stop) {
            printf("%d ", [obj intValue]);
        }];
        printf("\n");
        
        ArrayStat* stat = [MathHelper process:[generator generate:5]];
        printf("Median: %d, Derivation: %d\n", [stat.median intValue], [stat.derivation intValue]);
    }
    return 0;
}
