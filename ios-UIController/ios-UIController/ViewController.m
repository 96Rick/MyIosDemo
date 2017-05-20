//
//  ViewController.m
//  ios-UIController
//
//  Created by Rick on 2017/5/10.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//当视图控制器第一次被加载，使用函数
//布局初始化资源
- (void)viewDidLoad {
    
    //调用父类加载
    [super viewDidLoad];
    
    UIView* view = [[UIView alloc]init];
    view.frame = CGRectMake(100, 100, 100, 200);
    [self.view addSubview:view];
    
    view.backgroundColor = [UIColor blueColor];
    
    self.view.backgroundColor = [UIColor cyanColor];
    
    
    
}

//当系统内存过低时，会发出警报信息，使用此函数
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
    NSLog(@"内存过低");
}


@end
