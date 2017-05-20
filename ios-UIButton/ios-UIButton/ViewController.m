//
//  ViewController.m
//  ios-UIButton
//
//  Created by Rick on 2017/5/8.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)crateUIRectButton
{
    //创建一个btn对象，根据类型进行创建btn
//    圆角类型btn UIButtonTypeRoundedRect
    //类方法进行创建 buttonWithType
    UIButton* btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    btn.frame = CGRectMake(100, 100, 100, 40);
    //@parameter
    //P1:字符串类型 显示的文字
    //P2:设置文字显示状态类型 UIControlStateNormal（正常）
    [btn setTitle:@"Click Me" forState:UIControlStateNormal];
    //P1:字符串类型 显示的文字
    //设置文字显示状态类型 UIControlStatehighlighted（按下）
    [btn setTitle:@"Hi!" forState:UIControlStateHighlighted];
    
    btn.backgroundColor = [UIColor orangeColor];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateHighlighted];
    //设置风格颜色，优先级没有setTitleColor高
    [btn setTintColor:[UIColor whiteColor]];
    btn.titleLabel.font = [UIFont systemFontOfSize:24];
    [self.view addSubview:btn];
    
}

- (void)crateImageBtn
{
    UIButton* btnImage = [UIButton buttonWithType:UIButtonTypeCustom];
    
    btnImage.frame = CGRectMake(100, 200, 100, 200);
    UIImage* icon01 = [UIImage imageNamed:@"btn01.png"];
    UIImage* icon02 = [UIImage imageNamed:@"btn02.png"];
    [btnImage setImage:icon01 forState:UIControlStateNormal];
    [btnImage setImage:icon02 forState:UIControlStateHighlighted];
    [self.view addSubview:btnImage];
    
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self crateUIRectButton];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
