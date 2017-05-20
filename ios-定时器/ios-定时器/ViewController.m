//
//  ViewController.m
//  ios-定时器
//
//  Created by Rick on 2017/5/12.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//属性和成员变量的同步
@synthesize timerView = _timerView;




- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton* btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    btn.frame = CGRectMake(120,100,80, 40);
    
    [btn setTitle:@"启动定时器" forState:UIControlStateNormal];
    
    [btn addTarget:self action:@selector(pressStart) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
    
    UIButton* btnStop = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    btnStop.frame = CGRectMake(120, 200, 80, 40);
    
    [btnStop setTitle:@"停止计时器" forState:UIControlStateNormal];
    
    [btnStop setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    
    [btnStop addTarget:self action:@selector(pressStop) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btnStop];
    
    UIView* view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 80, 80)];
    
    view.backgroundColor = [UIColor redColor];
    
    [self.view addSubview:view];
    
    view.tag = 101;
}



- (void) pressStart
{
    //nstimer的类方法创建一个定时器，并启动
    //P1：每隔多久调用一次定时器函数以秒为单位
    //P2:P3的事件函数在哪个函数实现（实现定时器函数的对象（指针））
    //P3:定时器函数对象
    //P4:可以传入定时器函数中一个参数无参为空
    //P5:定时器是否重复操作yes为重复 no只完成一次函数调用
    //返回值为新建好的定时器对象
   _timerView = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(updateTimer:) userInfo:@"小明" repeats:YES];
    
}

//定时器函数
//可以讲定时器本身作为参数传入
- (void) updateTimer:(NSTimer*) timer
{
    
    UIView* view = [self.view viewWithTag:101];
    
    view.frame = CGRectMake(view.frame.origin.x+1, view.frame.origin.y+1, 80, 80);
    
    NSLog(@"test! name = %@",timer.userInfo);
}


- (void) pressStop
{
    if (_timerView != nil) {
        [_timerView invalidate];
    }
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
