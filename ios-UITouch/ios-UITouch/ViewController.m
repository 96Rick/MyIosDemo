//
//  ViewController.m
//  ios-UITouch
//
//  Created by Rick on 2017/5/23.
//  Copyright (c) 2017 Rick. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIImage *image = [UIImage imageNamed:@"1.jpg"];

    UIImageView *iView =[[UIImageView alloc] initWithFrame:CGRectMake(50, 100, 220, 300)];

    iView.image = image;
    
    iView.tag = 101;
    
    
    
    [self.view addSubview:iView];

}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event
{
    //获取点击对象，anyObject获取任何一个点击对象
    UITouch* touch = [touches anyObject];
    //touch.topCount 记录当前点击的次数（0.5秒内）
    if (touch.tapCount == 1)
    {
        NSLog(@"单次点击");
    }
    else if (touch.tapCount == 2)
    {
        NSLog(@"双次点击");
    }
    
    _mPtLast = [touch locationInView:self.view];
    
    NSLog(@"手指触碰瞬间");
}

-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event
{
    UITouch* touch = [touches anyObject];
    
    //获得当前手指在屏幕上的相对位置
    //相对于当前视图的坐标
    CGPoint pt = [touch locationInView:self.view];
    
    float xOffset = pt.x - _mPtLast.x;
    float yOffset = pt.y - _mPtLast.y;
    
    NSLog(@"x = %f y = %f",pt.x,pt.y);
    UIImageView* iView = (UIImageView*)[self.view viewWithTag:101];
    
    _mPtLast = pt;
    
    
    iView.frame = CGRectMake(iView.frame.origin.x+xOffset, iView.frame.origin.y+yOffset, iView.frame.size.width, iView.frame.size.height);
   
    
    
    // NSLog(@"手指移动事");
}

-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event
{
    NSLog(@"手指离开屏幕");
}

//在特殊情况下中断触屏事件时调用
//电话紧急信息时，取消当前的点击手势作用
//用来做紧急的数据处理
-(void)touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(nullable UIEvent *)event
{
    NSLog(@"touch cancel");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
