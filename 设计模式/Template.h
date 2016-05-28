//
//  Facade.h
//  设计模式
//
//  Created by user on 16/5/27.
//  Copyright © 2016年 mredrock. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TemplateProtocol.h"

@interface Template : NSObject<TemplateProtocol>

- (void)startToLoadView;


@end
