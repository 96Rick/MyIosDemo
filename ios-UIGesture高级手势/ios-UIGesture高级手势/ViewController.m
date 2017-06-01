//
//  ViewController.m
//  ios-UIGesture高级手势
//
//  Created by Rick on 2017/5/31.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //家在图像
    UIImage *image = [UIImage imageNamed:@"1.jpg"];
    
    UIImageView * iView = [[UIImageView alloc]initWithImage:image];
    
    iView.frame = CGRectMake(50, 80, 200, 320);
    
    //开启交互功能
    iView.userInteractionEnabled = YES;
    
    [self.view addSubview:iView];
    
    //创建一个捏合手势
    //P1:事件对象的所有者
    //P2:事件响应函数
    _pinchGes = [[UIPinchGestureRecognizer alloc]initWithTarget:self action:@selector(pinchAct:)];
    
    //将捏合手势添加到视图
    [iView addGestureRecognizer:_pinchGes];
    
    
    
    _rotationGes = [[UIRotationGestureRecognizer alloc]initWithTarget:self action:@selector(rotAct:)];
    
    [iView addGestureRecognizer:_rotationGes];
    
    //设置代理
    _rotationGes.delegate = self;
    _pinchGes.delegate = self;
    
    
    
}

//是否可以同时相应两个手势，如果返回值yes可以同时相应，如果为no，不可以同时相应
-(BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(nonnull UIGestureRecognizer *)otherGestureRecognizer
{
    return YES;
}



-(void) pinchAct:(UIPinchGestureRecognizer*) pinch
{
    //获取监控视图图像
    UIImageView* iView = (UIImageView*) pinch.view;
    //对图像视图进行矩阵变换计算并赋值
    //transfrom：表示图形学中的变换矩阵
    //CGAffineTransformScale：通过缩放的方式产生一个新矩阵
    //在参数一：原来的矩阵
    //参数2 ： x方向的缩放比例
    //参数3： y方向的缩放比例
    //返回值是新的缩放后的矩阵变换
    iView.transform = CGAffineTransformScale(iView.transform, pinch.scale, pinch.scale);
    //将缩放值归位为单位值
    //scale = 1 ： 原来大小, 如果小与一缩小效果
    pinch.scale = 1;
    
}


-(void)rotAct:(UIRotationGestureRecognizer*) rot
{
    UIImageView *iView = (UIImageView*) rot.view;
    
    iView.transform = CGAffineTransformRotate(iView.transform, rot.rotation);
    //选择角度清零
    rot.rotation = 0;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
