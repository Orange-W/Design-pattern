//
//  Responsibility.m
//  设计模式
//
//  Created by user on 16/5/27.
//  Copyright © 2016年 mredrock. All rights reserved.
//

#import "Responsibility.h"

@implementation Responsibility
- (void)throwToNextChain:(NSInteger)problemCode{
        [self.nextChain throwToNextChain:problemCode];
}
@end
