//
//  Description.m
//  设计模式
//
//  Created by user on 16/5/27.
//  Copyright © 2016年 mredrock. All rights reserved.
//

#import "Description.h"

@implementation Description

- (CGFloat)price{
    return 0+[self.nextObj price];
}

- (instancetype)addTo:(id<FoodPriceProtocol>)food{
    self.nextObj = food;
    return self;
}

-(NSString *)description{
    return @"只剩下篮子了..";
}

- (NSString *)countFoods{
    return [NSString stringWithFormat:@"%@",self.description];
}


@end
