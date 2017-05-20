//
//  ViewController.m
//  ios-UIView2
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
   
    UIView* view01 = [[UIView alloc]init];
    view01.frame = CGRectMake(100, 100, 150, 150);
    view01.backgroundColor = [UIColor blueColor];
    
    UIView* view02 = [[UIView alloc]init];
    view02.frame = CGRectMake(125, 125, 150, 150);
    view02.backgroundColor = [UIColor orangeColor];
    
    UIView* view03 = [[UIView alloc]init];
    view03.frame = CGRectMake(150, 150, 150, 150);
    view03.backgroundColor = [UIColor redColor];
    
   //按添加顺序进行优先绘制

    [self.view addSubview:view03];
  
    [self.view addSubview:view02];

    [self.view addSubview:view01];

    //调整视图到最前方
    [self.view bringSubviewToFront:view03];

    //调整到最后方显示
    [self.view sendSubviewToBack:view01];
    
    UIView* viewFront = self.view.subviews[2];
    UIView* viewBack = self.view.subviews[0];
    
    if (viewBack == view01) {
        NSLog(@"Yes");
    }
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
