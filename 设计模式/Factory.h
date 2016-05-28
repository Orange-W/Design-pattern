//
//  Factory.h
//  设计模式
//
//  Created by user on 16/5/27.
//  Copyright © 2016年 mredrock. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef NS_ENUM(NSUInteger, ORMClassInstance) {
    ORMClassInstanceNSNumber = 0,
    ORMClassInstanceNSString,
    ORMClassInstanceNSArray,
    ORMClassInstanceNSDictory,
};

@interface Factory : NSObject
+ (id)FactoryFastInstanceWithOption:(ORMClassInstance)option;
@end
