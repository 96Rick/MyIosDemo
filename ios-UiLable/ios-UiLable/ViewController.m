//
//  ViewController.m
//  ios-UiLable
//
//  Created by Rick on 2017/5/8.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)createUI
{
    //定义并创建一个uilabel对象
    UILabel* label = [[UILabel alloc]init];
    
    //label赋值
    label.text = @"Hello Google! My name is Rick!";
    label.frame = CGRectMake(70, 100, 160, 120);
    label.backgroundColor = [UIColor blueColor];
    label.textColor = [UIColor orangeColor];
    label.shadowColor = [UIColor grayColor];
    label.shadowOffset = CGSizeMake(1, 1);
    label.font = [UIFont systemFontOfSize:25];
    label.textAlignment = NSTextAlignmentCenter;
    //设定label文字显示的行数，Def为1
    //当numberOfLines > 0 时会按照设定行数限时
    //当numberOfLines = 0 时ios会计算需要几行，自动显示
    label.numberOfLines = 0;
    
    [self.view addSubview:label];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self createUI];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
