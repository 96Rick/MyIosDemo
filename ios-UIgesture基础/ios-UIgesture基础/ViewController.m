//
//  ViewController.m
//  ios-UIgesture基础
//
//  Created by Rick on 2017/5/26.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImage* image = [UIImage imageNamed:@"1.JPG"];
    
    UIImageView* iView = [[UIImageView alloc]initWithFrame:CGRectMake(50, 80, 200, 300)];
    
    iView.userInteractionEnabled = YES;
    
    [self.view addSubview:iView];
    
    _pinchGes = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(pinchAct:)];
    
    [iView addGestureRecognizer:_pinchGes];
}

//参数：捏合手势对象
-(void) pinchAct:(UIPinchGestureRecognizer*) pinch
{
    //获取监控视图图像
    UIImageView* iView = (UIImageView*) pinch.view;
    //对图像视图对象进行矩阵变换计算赋值
    //
    iView.transform = CGAffineTransformScale(iView.transform, pinch.scale, pinch.scale);
    //
    pinch.scale = 1 ;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
