//
//  AppDelegate.m
//  ios-UIWindow
//
//  Created by Rick on 2017/5/9.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


//当程序框架初始化成功后
//调用此函数
//此函数用来初始化整个程序框架结构
//整个程序对开发者的入口函数
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    //创建一个UIWindow对象
    //整个程序基本上只有一个UIWindow对象
    //UIWindow也继承与UIVIew
    //UIWindow是特殊的UIView
    //UIScreen:表示屏幕硬件
    //mainScreen获取主屏幕的设备信息
    //bounds表示屏幕宽高值
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    //创建一个视图控制器作为UIWIndow的根视图控制器
    self.window.rootViewController = [[UIViewController alloc]init];
    
    UIView* view = [[UIView alloc]initWithFrame:CGRectMake(100, 100, 150, 150)];
    view.backgroundColor = [UIColor orangeColor];
    UIView* backView = [[UIView alloc]initWithFrame:CGRectMake(50, 50, 240, 360)];
    backView.backgroundColor = [UIColor redColor];
    
    [backView addSubview:view];
    
    [self.window addSubview:backView];
    
    
    
    
    
    self.window.backgroundColor = [UIColor blackColor];
    //设置window有效并显示
    [self.window makeKeyAndVisible];
    
    NSLog(@"%@",view.window);
    NSLog(@"%@",backView.window);
    NSLog(@"%@",self.window);
    
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
