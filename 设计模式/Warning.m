//
//  Warning.m
//  设计模式
//
//  Created by user on 16/5/27.
//  Copyright © 2016年 mredrock. All rights reserved.
//

#import "Warning.h"
@implementation Warning
- (void)throwToNextChain:(NSInteger)problemCode{
    if (problemCode == 0) {
        NSLog(@"Waring");
    }else{
        [self.nextChain throwToNextChain:problemCode];
    }
}
@end
