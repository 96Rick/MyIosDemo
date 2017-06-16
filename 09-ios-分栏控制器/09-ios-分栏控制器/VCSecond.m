//
//  VCSecond.m
//  09-ios-分栏控制器
//
//  Created by Rick on 2017/6/9.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "VCSecond.h"

@interface VCSecond ()

@end

@implementation VCSecond

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //根据系统风格创建芬兰按钮
    //p1：系统风格设定
    //P2：tag
    UITabBarItem *tabBarItem = [[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemContacts tag:102];
    
    //按钮右上角的提示信息
    //通常用来提示未读信息
    tabBarItem.badgeValue = @"12" ;
    self.tabBarItem = tabBarItem;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
