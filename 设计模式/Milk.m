//
//  Milk.m
//  设计模式
//
//  Created by user on 16/5/27.
//  Copyright © 2016年 mredrock. All rights reserved.
//

#import "Milk.h"


@implementation Milk
- (instancetype)addTo:(id<FoodPriceProtocol>)food{
    self.nextObj = food;
    return self;
}

- (CGFloat)price{
    return 2.5+[self.nextObj price];
}

-(NSString *)description{
    return @"🐂奶";
}

- (NSString *)countFoods{
    return [NSString stringWithFormat:@"%@ %@",self.description,self.nextObj.countFoods];
}
@end
