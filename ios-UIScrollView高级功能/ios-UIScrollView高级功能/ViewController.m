//
//  ViewController.m
//  ios-UIScrollView高级功能
//
//  Created by Rick on 2017/5/18.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(10, 50, 300, 400)];
    
    _scrollView.bounces = NO;
    
    //允许通过点击屏幕让滚动视图相应事件
    //_scrollView.userInteractionEnabled = NO;
    
    //设置画布大小
    _scrollView.contentSize = CGSizeMake(300, 400*9);
    
    for (int i = 0 ; i < 9; i++)
    {
        NSString* strName = [NSString stringWithFormat:@"%d.JPG",i+1];
        
        UIImage* image = [UIImage imageNamed:strName];
        
        //创建视图对象，并设置位置
        UIImageView* iView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 400*i, 300, 400)];
        //图像赋值
        iView.image = image;
        
        [_scrollView addSubview:iView];
        
        
    }
    
    [self.view addSubview:_scrollView];
    
    //取消按页滚动
    _scrollView.pagingEnabled = NO;
    
    //滚动视图画布的移动位置，偏移位置
    //功能：决定画布显示的最终图像结果

    _scrollView.contentOffset = CGPointMake(0, 0);
    
    
    //将当前视图控制器作为视图对象，前提在.h文件中声明<UIScrollViewDelegate>
    _scrollView.delegate = self;
    
}


- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    
    //让滚动视图移动到指定位置，没有动画
//    _scrollView.contentOffset = CGPointMake(0, 0);
    //让滚动视图移动到指定位置，带有动画
    [_scrollView scrollRectToVisible:CGRectMake(0, 0, 300, 400) animated:YES];
    
}





//当滚动视图移动时 只要offset坐标发生变化，都会调用此函数
// 参数： 调用次协议的滚动视图对象
- (void) scrollViewDidScroll:(UIScrollView *)scrollView
{
//    NSLog(@"y = %f",scrollView.contentOffset.y);
    
    
}


//滚动视图即将开始被拖动时
-(void) scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
    NSLog(@"Will Begin Drag!");
    
}


//试图即将结数拖动时调用
- (void) scrollViewWillEndDragging:(UIScrollView *)scrollView withVelocity:(CGPoint)velocity targetContentOffset:(inout CGPoint *)targetContentOffset
{
    NSLog(@"will End Dragging");
}


//当滚动视图结束拖动时调用此函数
- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate
{
    NSLog(@"Did End Drag!");
}


//视图即将减速时调用
- (void) scrollViewWillBeginDecelerating:(UIScrollView *)scrollView
{
    NSLog(@"Will Begin Decelerating");
}

//视图已经结束减速时调用，试图停止的瞬间调用
- (void) scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    NSLog(@"Did End Decelerating");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
