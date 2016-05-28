//
//  AddCommond.m
//  设计模式
//
//  Created by user on 16/5/28.
//  Copyright © 2016年 mredrock. All rights reserved.
//

#import "AddCommond.h"

@implementation AddCommond

static NSString *commondStringAdd = @"add";
static NSString *commondString2 = @"sum";

- (BOOL)findCommand:(NSString *)command params:(NSArray *)params{

    if ([command isEqualToString:commondString2]) ;
    
    if ([command isEqualToString:commondStringAdd]) {
        CGFloat sum = 0.0f;
        for (NSNumber *number in params) {
            sum += [number doubleValue];
        }
        NSLog(@"add sum:%lf",sum);
        return YES;
    }
    return NO;
}

@end
