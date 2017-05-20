//
//  ViewController.m
//  ios-UIButton事件处理
//
//  Created by Rick on 2017/5/9.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)createBtn
{
    
    
    //向按钮添加事件函数
    //P1:谁来实现事件函数，实现者对象就是谁
    //P2:@selector（pressBtn）：调用函数，当按钮满足P3时间类型时，调用函数
    //P3:UIControlEvent事件处理函数类型
    //UIControlEventTouchUpInside手指离开屏幕时，并手指为止在按钮范围内触发
    //多个按钮使用同一个事件函数处理
    UIButton* btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    btn.frame = CGRectMake(100, 100, 80, 40);
    
    [btn setTitle:@"Click Me" forState:UIControlStateNormal];
    
    [btn setTitle:@"Hi" forState:UIControlStateHighlighted];
    
    [btn addTarget:self action:@selector(pressBtnInside:) forControlEvents:UIControlEventTouchUpInside];
    [btn addTarget:self action:@selector(TouchDown:) forControlEvents:UIControlEventTouchDown];
    [btn addTarget:self action:@selector(pressBtnOutside:) forControlEvents:UIControlEventTouchUpOutside];
    [self.view addSubview:btn];
    
    
    UIButton* btn02 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn02.frame = CGRectMake(100, 200, 80, 40);
    
    [btn02 setTitle:@"Hi" forState:UIControlStateNormal];
    
    [btn02 setTitle:@"World" forState:UIControlStateHighlighted];
    
    [btn02 addTarget:self action:@selector(pressBtnInside:) forControlEvents:UIControlEventTouchUpInside];
    [btn02 addTarget:self action:@selector(TouchDown:) forControlEvents:UIControlEventTouchDown];
    [btn02 addTarget:self action:@selector(pressBtnOutside:) forControlEvents:UIControlEventTouchUpOutside];
    [self.view addSubview:btn02];
    
    //设置标签
    btn.tag = 101;
    btn02.tag = 102;
    
}


- (void)TouchDown:(UIButton*) btn
{
    if (btn.tag == 101) {
        NSLog(@"按钮 01 被触碰\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t ----------------");
    }
    if (btn.tag == 102) {
        NSLog(@"按钮 02 被触碰\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t ----------------");
    }
}

- (void)pressBtnInside:(UIButton*) btn
{
    if (btn.tag == 101) {
        NSLog(@"按钮 01 OK\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t ----------------");
    }
    else if (btn.tag == 102)
    {
        NSLog(@"按钮 02 OK\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t ----------------");
    }
    
}
- (void)pressBtnOutside:(UIButton*) btn
{
    if (btn.tag == 101) {
        NSLog(@"按钮 01 cancel\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t ----------------");
    }
    if (btn.tag == 102) {
        NSLog(@"按钮 02 cancel\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t ----------------");
    }
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self createBtn];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
