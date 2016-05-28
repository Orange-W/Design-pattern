//
//  Command.m
//  设计模式
//
//  Created by user on 16/5/27.
//  Copyright © 2016年 mredrock. All rights reserved.
//

#import "Command.h"
#import "CommondProtocol.h"



@interface Command()
@property (strong, nonatomic)NSMutableArray *commonsArray;
@end

@implementation Command
- (instancetype)init{
    self = [super init];
    if (self) {
        self.commonsArray = [NSMutableArray array];
    }
    return self;
}

- (instancetype)addCommand:(NSObject<CommandProtocol> *)obj{
    [self.commonsArray addObject:obj];
    return self;
}

- (instancetype)runCommand:(NSString *)command params:(NSArray *)first{
    for (NSObject<CommandProtocol> *obj in self.commonsArray) {
//        id arg;
//        va_list argList;
//        NSMutableArray *params = [NSMutableArray array];
//        NSLog(@"2");
//        if(first)
//        {
//            va_start(argList,first);
//            arg = va_arg(argList,id);
//            while (arg);
//            {
//                [params addObject:arg];
//            }
//            va_end(argList);
//        }
//        NSLog(@"2");
        if ([obj findCommand:command params:first]) {
            return self;
        }
    }
    
    NSLog(@"没有相关的命令");
    return self;
}



@end
