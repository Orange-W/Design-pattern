//
//  Responsibility.h
//  设计模式
//
//  Created by user on 16/5/27.
//  Copyright © 2016年 mredrock. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Error.h"
#import "Warning.h"
#import "ChainProtocol.h"

@interface Responsibility : NSObject<ChainProtocol>
@property (strong, nonatomic) id nextChain;
@end
