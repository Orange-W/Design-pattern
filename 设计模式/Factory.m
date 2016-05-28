//
//  Factory.m
//  设计模式
//
//  Created by user on 16/5/27.
//  Copyright © 2016年 mredrock. All rights reserved.
//

#import "Factory.h"



@implementation Factory

+ (id)FactoryFastInstanceWithOption:(ORMClassInstance)option{
    switch (option) {
        case ORMClassInstanceNSNumber:
            return [NSNumber numberWithInt:0];
            break;
        case ORMClassInstanceNSString:
            return [NSString string];
            break;
        case ORMClassInstanceNSArray:
            return [NSArray array];
            break;
        case ORMClassInstanceNSDictory:
            return [NSDictionary dictionary];
            break;
        default:
            break;
    }
}

@end
