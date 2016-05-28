//
//  Singleton.m
//  设计模式
//
//  Created by user on 16/5/27.
//  Copyright © 2016年 mredrock. All rights reserved.
//

#import "Singleton.h"

@implementation Singleton
static  Singleton *singleClass;

+ (instancetype)sharedInstanced{
    return [[Singleton alloc] init];
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone{

    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        singleClass = [super allocWithZone:zone];
        NSLog(@"111");
    });
//     NSLog(@"222");
//    NSNumber *a = @0;
//    if (singleClass == nil) {
//        @synchronized (a) {
//            if (singleClass == nil) {
//                singleClass = [super allocWithZone:zone];
//            }
//        }
//    }
    
    return singleClass;
}

- (void)relaseShared{
    singleClass = nil;
}

@end
