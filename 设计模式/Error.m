//
//  Error.m
//  设计模式
//
//  Created by user on 16/5/27.
//  Copyright © 2016年 mredrock. All rights reserved.
//

#import "Error.h"

@implementation Error
- (void)throwToNextChain:(NSInteger)problemCode{
    if (problemCode < 0) {
        NSLog(@"Throw Error!");
    }else{
        [self.nextChain throwToNextChain:problemCode];
    }
}
@end
