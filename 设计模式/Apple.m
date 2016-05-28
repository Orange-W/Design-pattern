//
//  Apple.m
//  设计模式
//
//  Created by user on 16/5/27.
//  Copyright © 2016年 mredrock. All rights reserved.
//

#import "Apple.h"

@implementation Apple
- (instancetype)addTo:(id<FoodPriceProtocol>)food{
    self.nextObj = food;
    return self;
}

- (CGFloat)price{
    return 4+[self.nextObj price];
}

-(NSString *)description{
    return @"🍎";
}

- (NSString *)countFoods{
    return [NSString stringWithFormat:@"%@ %@",self.description,self.nextObj.countFoods];
}
@end
