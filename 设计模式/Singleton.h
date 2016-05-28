//
//  Singleton.h
//  设计模式
//
//  Created by user on 16/5/27.
//  Copyright © 2016年 mredrock. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Singleton : NSObject
@property (assign ,nonatomic) NSInteger number;

+ (instancetype)sharedInstanced;
@end
