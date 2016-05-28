//
//  Apple.h
//  设计模式
//
//  Created by user on 16/5/27.
//  Copyright © 2016年 mredrock. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FoodPriceProtocol.h"

@interface Apple : NSObject <FoodPriceProtocol>
@property (strong, nonatomic) id<FoodPriceProtocol> nextObj;
@property (assign, nonatomic) CGFloat price;
@property (copy, nonatomic) NSString *description;

@end
