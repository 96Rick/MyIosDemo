//
//  ViewController.m
//  ios-UIGesture扩展手势
//
//  Created by Rick on 2017/6/1.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImageView *iView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"1.jpg"]];
    
    iView.frame =CGRectMake(60, 50, 200, 300);
    
    iView.userInteractionEnabled = YES;
    
    //创建一个平移手势
    //p1：时间函数处理对象
    //P2:事件函数
    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(panAct:)];
    
    //将手势添加到图像视图中
    [iView addGestureRecognizer:pan];
    //取消添加到视图
    [iView removeGestureRecognizer:pan];
    
    [self.view addSubview:iView];
    
    //手势二：
    UISwipeGestureRecognizer *swipe = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipeAct:)];
    
    
    //设定滑动手势接受事件的类型
    //swipe.direction = UISwipeGestureRecognizerDirectionLeft : 向左滑动
    //swipe.direction = UISwipeGestureRecognizerDirectionRight :向右滑动
    //swipe.direction = UISwipeGestureRecognizerDirectionUp :向上滑动
    //swipe.direction = UISwipeGestureRecognizerDirectionDown :向下滑动
    swipe.direction = UISwipeGestureRecognizerDirectionUp;
    [iView addGestureRecognizer:swipe];

    
    
    
    UILongPressGestureRecognizer *longPress = [[UILongPressGestureRecognizer alloc]initWithTarget:self action:@selector(longPress:)];
    
    [iView addGestureRecognizer:longPress];
    
    //设置长按手势事件，默认0.5秒
    longPress.minimumPressDuration = 0.5;
    
}

//长按手势
-(void) longPress:(UILongPressGestureRecognizer*) press
{
    //手势的状态对象，到达规定时间，3秒，触发函数
    if (press.state == UIGestureRecognizerStateBegan) {
       
        NSLog(@"状态开始！");
        
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:0.18];
        press.view.frame = CGRectMake(0, 0, 320, 568);
        [UIView commitAnimations];
        
        
        
        
    }else if (press.state == UIGestureRecognizerStateEnded){
        
        NSLog(@"结束状态");
        
        [UIView beginAnimations:nil context:nil];
        [UIView setAnimationDuration:0.5];
        press.view.frame = CGRectMake(60, 50, 200, 300);
        [UIView commitAnimations];
    }
}




-(void) swipeAct:(UISwipeGestureRecognizer*) swipe
{
    if (swipe.direction & UISwipeGestureRecognizerDirectionUp)
    {
        NSLog(@"向上滑动！");
    }
}






//只要手指在屏幕上发生变化是，调用函数
-(void) panAct:(UIPanGestureRecognizer*) pan
{
    
    //获取移动的坐标，相对于视图的坐标系
    //参数：相对的视图对象
    CGPoint pt = [pan translationInView:self.view];
    
    NSLog(@"pt.x = %.2f, pt.y = %.2f" , pt.x,pt.y);

    
    //获取移动时的相对速度
    CGPoint pv = [pan velocityInView:self.view];
    
    NSLog(@"pv.x = %.2f,pv.y = %.2f",pv.x,pv.y);
    
    
    //NSLog(@"pan!");
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
