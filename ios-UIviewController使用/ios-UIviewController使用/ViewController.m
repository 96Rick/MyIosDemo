//
//  ViewController.m
//  ios-UIviewController使用
//
//  Created by Rick on 2017/5/11.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "ViewController.h"
#import "ViewController02.h"

@interface ViewController ()

@end

@implementation ViewController

- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    ViewController02* vc =[[ViewController02 alloc]init];
    
    
    //显示一个新的视图控制器到屏幕上
    //P1:新的视图控制器对象
    //P2:是否使用动画切换动画效果
    //P3:切换结束后功能调用，不需要传nil即可
    [self presentViewController:vc animated:YES completion:nil];
}





- (void)viewDidLoad {
    [super viewDidLoad];
   
    self.view.backgroundColor = [UIColor cyanColor];
    NSLog(@"viewFirestDidLoad!");
}


//视图分为：1显示前 2正在处于显示 3已经被隐藏
//参数 表示 是否用动画切换后显示
-(void) viewWillAppear:(BOOL)animated
{
    NSLog(@"ViewWillAppear");
}

//视图已经显示到屏幕后调用此函数
//参数： 表示是否用动画切换
//当前状态已经显示到屏幕上
- (void)viewDidAppear:(BOOL)animated
{
    NSLog(@"viewDidAppear");
    
}



//视图即将消失，调用此函数
-(void)viewWillDisappear:(BOOL)animated
{
    NSLog(@"ViewWillDisappear");
}

//当前视图控制器已经消失了
- (void)viewDidDisappear:(BOOL)animated
{
    NSLog(@"viewDidDisappear");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
