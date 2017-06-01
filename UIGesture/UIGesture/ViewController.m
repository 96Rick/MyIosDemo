//
//  ViewController.m
//  UIGesture
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
    

    UIImage* image = [UIImage imageNamed:@"1.JPG" ];                     //加载图像对象，从本地硬盘加载到内存中
    _imageView = [[UIImageView alloc]initWithFrame:CGRectMake(50, 80, 200, 300)];    //创建图像视图
    _imageView.image = image;                                            //将图像视图的图像赋值
    [self.view addSubview:_imageView];
    
   
                    //开启交互事件相应//默认为no
    _imageView.userInteractionEnabled = YES;
    
                    //创建一个点击手势对象
                    //UITapGestureRecognizer 点击手势类
                    //功能：识别点击手势事件
                    //p1：响应时间的拥有者对象，self表示当前视图控制器
                    //p2：相应事件的函数
    UITapGestureRecognizer* tapOneGes = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapOneAct:)];

                    //表示手势识别事件的事件类型：几次点击触发
                    //默认值为一
    tapOneGes.numberOfTapsRequired = 1;
    
                    //表示几个手指点击时触发事件函数
                    //默认为一
    tapOneGes.numberOfTouchesRequired = 1;
    
                    //点击事件添加到视图中，视图即可响应
    [_imageView addGestureRecognizer:tapOneGes];
    
    
    
    UITapGestureRecognizer* tapTwoGes = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapTwoAct:)];
    tapTwoGes.numberOfTapsRequired = 2;
    tapTwoGes.numberOfTouchesRequired = 1;
    [_imageView addGestureRecognizer:tapTwoGes];
                    //当单击操作遇到双击操作时，单击操作失效
    [tapOneGes requireGestureRecognizerToFail:tapTwoGes];


}

-(void) tapTwoAct:(UITapGestureRecognizer*) tap
{
    NSLog(@"双次点击");
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.18];
    _imageView.frame = CGRectMake(50, 80, 200, 300);
    [UIView commitAnimations];
    
    
}

                    //事件响应函数
                    //参数手势点击事件对象
-(void) tapOneAct:(UITapGestureRecognizer*) tap
{
    NSLog(@"单次点击");
                    //获取手势监控的试图对象
    UIImageView* imageView = (UIImageView*) tap.view;
                    //开始动画过程
    [UIView beginAnimations:nil context:nil];
                    //设置动画过渡时间
    [UIView setAnimationDuration:0.18];
    
    imageView.frame = CGRectMake(0, 0, 320, 568);
    
                    //结束动画过程
    [UIView commitAnimations];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
