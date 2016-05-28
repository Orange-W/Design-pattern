//
//  main.m
//  设计模式
//
//  Created by user on 16/5/27.
//  Copyright © 2016年 mredrock. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Description.h"
#import "Apple.h"
#import "Milk.h"
#import "Template.h"
#import "Singleton.h"
#import "Delegate.h"
#import "Command.h"
#import "AddCommond.h"
#import "Responsibility.h"


int main(int argc, const char * argv[]) {
    //装饰者模式
    Description *basket =  [[Description alloc]init];;
    Milk *milk = [[Milk alloc] init];
    Apple *apple = [[Apple alloc] init];
    id<FoodPriceProtocol> foods = [milk  addTo:[apple addTo:basket]];
    NSLog(@"\n取出食物 %@\n价格:%lf",[foods countFoods],[foods price]);
//
    //模板模式
//    Template *fe = [[Template alloc] init];
//    [fe startToLoadView];
    
    //单例
//    Singleton *a = [Singleton sharedInstanced];
//    a.number = 1;
//    
//    Singleton *b = [Singleton sharedInstanced];
//    NSLog(@"%ld",b.number);
    
//    //代理
//    Delegate *delegate = [[Delegate alloc] init];
//    [delegate run];

    //命令链
//    Command *cmd = [[Command alloc] init];
//    [[[cmd addCommand:[[AddCommond alloc] init]]
//        runCommand:@"add" params:@[@1,@2]]
//        runCommand:@"add" params:@[@6,@2]];
//
//    [cmd runCommand:@"sum" params:@[@1.0,@2.1]];
    
//    Responsibility *re = [[Responsibility alloc] init];
//    Warning *war = [[Warning alloc] init];
//    Error *err = [[Error alloc] init];
//    re.nextChain = err;
//    err.nextChain =  war;
//    [re throwToNextChain:-1];
//    [re throwToNextChain:0];
//    [re throwToNextChain:22];
    return 0;
}
