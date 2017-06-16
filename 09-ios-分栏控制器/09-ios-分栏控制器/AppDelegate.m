//
//  AppDelegate.m
//  09-ios-分栏控制器
//
//  Created by Rick on 2017/6/9.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "AppDelegate.h"
#import "VCFirst.h"
#import "VCSecond.h"
#import "VCThird.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    [self.window makeKeyAndVisible];
    
    VCFirst *vcFirst = [[VCFirst alloc]init];
    VCSecond *vcSecond = [[VCSecond alloc]init];
    VCThird *vcThird = [[VCThird alloc]init];
    
    vcFirst.title = @"视图1";
    vcSecond.title = @"视图2";
    vcThird.title = @"视图3";
    
    vcFirst.view.backgroundColor = [UIColor blueColor];
    vcSecond.view.backgroundColor = [UIColor yellowColor];
    vcThird.view.backgroundColor = [UIColor orangeColor];
    
    //创建分栏控制器对象
    UITabBarController *tbController = [[UITabBarController alloc]init];
    
    
    //创建一个数组对象，将所有的视图添加到数组中去
    NSArray *arrayVC = [NSArray arrayWithObjects:vcFirst,vcSecond,vcThird,nil];
    
    //将分栏视图控制器管理数组赋值
    tbController.viewControllers = arrayVC;
    
    //将分栏控制器作为跟视图控制器
    self.window.rootViewController = tbController;
    
    //设置选中视图孔子器的索引
    //通过索引来确定显示哪一个控制器
    tbController.selectedIndex = 1;
    
    if (tbController.selectedViewController == vcSecond) {
        NSLog(@"当前显示的是控制器2");
    }
    
    tbController.tabBar.translucent = NO;
        
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
