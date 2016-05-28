//
//  Facade.m
//  设计模式
//
//  Created by user on 16/5/27.
//  Copyright © 2016年 mredrock. All rights reserved.
//

#import "Template.h"

@implementation Template

- (void)startToLoadView{
    //加载页面
    [self loadView];
    if ([self respondsToSelector:@selector(viewDidLoad)]) [self viewDidLoad];
    
    //展示页面
    if ([self respondsToSelector:@selector(viewWillAppear)]) [self viewWillAppear];
    [self viewAppear];
    if ([self respondsToSelector:@selector(viewDidAppear)]) [self viewDidAppear];
    
    //销毁页面
    if ([self respondsToSelector:@selector(viewWillDisappear)]) [self viewWillDisappear];
    [self viewDisappear];
    if ([self respondsToSelector:@selector(viewDidDisappear)]) [self viewDidDisappear];
}

- (void)loadView{
    NSLog(@"加载页面");
}

- (void)viewAppear{
    NSLog(@"页面出现");
}

- (void)viewDisappear{
    NSLog(@"页面消失");
}

-(void)viewWillAppear{
    NSLog(@"页面出现前");
}


@end
