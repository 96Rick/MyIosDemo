//
//  ViewController.m
//  ios-UISwitch
//
//  Created by Rick on 2017/5/13.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize  mySwitch = _mySwitch;


- (void)viewDidLoad {
    [super viewDidLoad];
    
    _mySwitch = [[UISwitch alloc]init];
    
    //苹果官方的控件
    //位置x，y的值可以改变，80 40 无法改变
    _mySwitch.frame = CGRectMake(200, 50, 80, 40);
    
//    _mySwitch.on = YES; = [_mySwitch setOn:YES];
    [_mySwitch setOn:YES];
    
    //P2：是否开启动画
    [_mySwitch setOn:YES animated:YES];
    
    //开启状态开关颜色
    [_mySwitch setOnTintColor:[UIColor redColor]];
    
    //设置按钮颜色
    [_mySwitch setThumbTintColor:[UIColor blackColor]];
    
    //设置整体颜色
    [_mySwitch setTintColor:[UIColor redColor]];
    
    //向开关添加事件
    //P1: 函数实现对象
    //P2: 函数对象
    //P3: 事件响应式的事件类型UIControlEventValueChanged：状态发生变化时触发发函数
    [_mySwitch addTarget:self action:@selector(swChange:) forControlEvents:UIControlEventValueChanged];
    
    self.view.backgroundColor = [UIColor blackColor];
    
    [self.view addSubview:_mySwitch];
}


- (void) swChange:(UISwitch*) sw

{
    if (sw.on == YES) {
        NSLog(@"开关被打开");
        self.view.backgroundColor = [UIColor blackColor];
        
    }else
    {
        NSLog(@"开关被关闭");
        self.view.backgroundColor = [UIColor orangeColor];
        
    }
}








- (void) swChange
{
    NSLog(@"开关发生变化");
    
    
    if ([_mySwitch isOn]) {
        self.view.backgroundColor = [UIColor blackColor];
    }
    else
    {
        self.view.backgroundColor = [UIColor orangeColor];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
