//
//  ViewController.m
//  ios-UIView
//
//  Created by Rick on 2017/5/9.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController





- (void)viewDidLoad {
    [super viewDidLoad];

    UIView* view = [[UIView alloc]init];
    view.frame = CGRectMake(100, 100, 100, 100);
    view.backgroundColor = [UIColor blueColor];
    [self.view addSubview:view];
    //所有的控件都继承于view 所以都有hidden属性
    view.hidden = NO;
    //设置透明度
    //alpha = 1:不透明
    //alpha = 0 透明
    //alpha = 0.5 半透明
    view.alpha = 0.2;
    self.view.backgroundColor = [UIColor blackColor];
    //设置是否显示不透明
    view.opaque = NO;
    //从父视图中删除
    //[view removeFromSuperview];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


@end
