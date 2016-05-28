//
//  Command.h
//  设计模式
//
//  Created by user on 16/5/27.
//  Copyright © 2016年 mredrock. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CommondProtocol.h"

@interface Command : NSObject
- (instancetype)addCommand:(NSObject<CommandProtocol> *)obj;
- (instancetype)runCommand:(NSString *)command params:(NSArray *)first;

@end
