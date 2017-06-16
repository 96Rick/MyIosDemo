//
//  VCRoot.m
//  06-ios-导航栏基础
//
//  Created by Rick on 2017/6/8.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "VCRoot.h"


@interface VCRoot ()

@end

@implementation VCRoot

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    //是指导航栏的标题文字
    self.title = @"根视图";
    
    //设置导航元素项的标题
    //如果navigationItem.title为空，系统会使用self.title作为标题
    self.navigationItem.title = @"Title";
    
    //创建一个导航栏左侧的按钮
    //根据title文字来创建按钮
    //p1:按钮上的文字
    //p2:按钮风格
    //p3:事件拥有者
    //p4:按钮事件
    UIBarButtonItem *leftBtn = [[UIBarButtonItem alloc]initWithTitle:@"Edit" style:UIBarButtonItemStylePlain target:self action:@selector(pressLeft)];
    
    //将导航元素项的左侧按钮赋值
    self.navigationItem.leftBarButtonItem = leftBtn;
    
    //创建一个导航栏右侧的按钮
    //根据系统风格来创建按钮
    //按钮上的文字由系统自己创建
    //p1:按钮风格
    //p2:事件拥有者
    //p3:按钮事件
    UIBarButtonItem *rightBtn = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemEdit  target:self action:@selector(pressRight)];
    
    self.navigationItem.rightBarButtonItem = rightBtn;
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(10, 10, 50, 40)];
    label.text = @"test";
    label.textAlignment = NSTextAlignmentCenter;
    
    //将任何类型的控件添加到导航按钮的方法
    UIBarButtonItem *item03 = [[UIBarButtonItem alloc]initWithCustomView:label];
    
    //创建按钮数组
    NSArray *arryBtn = [NSArray arrayWithObjects:rightBtn,item03, nil];
    
    //将按钮数组赋值
    self.navigationItem.rightBarButtonItems = arryBtn;
    
    
}

-(void)pressLeft
{
    NSLog(@"左按钮被按下");
}

-(void)pressRight
{
    NSLog(@"右侧按钮被按下");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
