//
//  Chain.h
//  设计模式
//
//  Created by user on 16/5/27.
//  Copyright © 2016年 mredrock. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ChainProtocol <NSObject>
@property (strong, nonatomic) id nextChain;
- (void)throwToNextChain:(NSInteger)problemCode;

@end
