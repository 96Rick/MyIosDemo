//
//  ViewController.m
//  04-ios-手动布局子视图（改进版）
//
//  Created by Rick on 2017/6/6.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "ViewController.h"
#import "SuperView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {

//  1 在viewcontroller中添加一个SuperView视图位置（2020180280）
    
    [super viewDidLoad];
    SuperView *iView = [[SuperView alloc]initWithFrame:CGRectMake(20, 20, 180, 280)];
    
    [iView creatSubView];
    
    iView.backgroundColor = [UIColor blackColor];
    [self.view addSubview:iView];
    
//  2 添加两个按钮 放大 缩小
    
    UIButton *btn01 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn01.frame = CGRectMake(240, 480, 80, 40);
    [btn01 setTitle:@"放大" forState:UIControlStateNormal];
    [btn01 addTarget:self action:@selector(pressToLarge) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn01];
    
    UIButton *btn02 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn02.frame = CGRectMake(240, 520, 80, 40);
    [btn02 setTitle:@"缩小" forState:UIControlStateNormal];
    [btn02 addTarget:self action:@selector(pressToSmall) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn02];
    
    iView.tag = 101;
}

//  3 按下放大按钮使视图放大到（2020250	480）（有动画效果）
-(void)pressToLarge
{
    SuperView *sView = (SuperView*)[self.view viewWithTag:101];
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.3];
    sView.frame = CGRectMake(20, 20, 250, 480);
    [sView toLarge];
    [UIView commitAnimations];
}

//  4 按下缩小按钮缩小到（20 20 180 280）

-(void)pressToSmall
{
    SuperView *sView = (SuperView*)[self.view viewWithTag:101];
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.3];
    sView.frame = CGRectMake(20, 20, 180, 280);
    [sView toSmall];
    [UIView commitAnimations];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
