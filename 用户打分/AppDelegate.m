//
//  AppDelegate.m
//  用户打分
//
//  Created by 小飞鸟 on 2018/1/27.
//  Copyright © 2018年 小飞鸟. All rights reserved.
//

#import "AppDelegate.h"
#import "Appirater.h"
@interface AppDelegate ()<AppiraterDelegate>

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    [self configAppirater];
    
    return YES;
}


-(void)configAppirater{
    
    //应用的APPID
    [Appirater setAppId:@"1339127844"];
    //用户安装这个应用多久之后 才是计算
    [Appirater setDaysUntilPrompt:1/(24*60)];
    //用户启动多少次之后 开始弹出
    [Appirater setUsesUntilPrompt:0];
    //对于特定事件处理  -1
    [Appirater setSignificantEventsUntilPrompt:-1];
    //用户没有评分的话 多久再提醒一次
    [Appirater setTimeBeforeReminding:2];
    
    /********************2.0/3.0有的功能 但是 调的没结果 提交没有响应 可以使用1.0***********************************/
//    [Appirater setCustomAlertTitle:@"为皇冠足球评分"];
//    [Appirater setCustomAlertMessage:@"如果您觉得“皇冠足球”很好用，可为它评一个分数"];
//    [Appirater setCustomAlertCancelButtonTitle:@"不了，谢谢"];
//    [Appirater setCustomAlertRateLaterButtonTitle:@"稍后再说"];
//    [Appirater setCustomAlertRateButtonTitle:@"现在去评分"];
//    
    /*******************************************************/
    //Debug调试，每一次都可以调出来
    [Appirater setDebug:YES];

    //didFinishLaunchingWithOptions 最后调的 告诉 Appirater应用启动了
    [Appirater appLaunched:YES];
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    
    //applicationWillEnterForeground 最后调的 告诉 Appirater应用进入前台
    [Appirater appEnteredForeground:YES];
}

-(void)appiraterDidOptToRate:(Appirater *)appirater{
    
    
}


@end
