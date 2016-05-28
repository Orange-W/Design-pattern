//
//  Delegate.h
//  设计模式
//
//  Created by user on 16/5/28.
//  Copyright © 2016年 mredrock. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DelegateProtocol.h"
@interface Delegate : NSObject
@property (weak, nonatomic)id<DelegateProtocol> delegate1;


- (void)run;

@end
