//
//  VCRoot.m
//  08-ios-导航栏工具栏
//
//  Created by Rick on 2017/6/9.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "VCRoot.h"
#import "VCSecond.h"

@interface VCRoot ()

@end

@implementation VCRoot

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor yellowColor];
    
    //黑色也是半透明风格
    self.navigationController.navigationBar.barStyle = UIBarStyleBlack;
    
    //设置是否透明
    self.navigationController.navigationBar.translucent = YES;
    
    //设置导航栏的颜色
    self.navigationController.navigationBar.barTintColor = [UIColor blackColor];
    
    //设置导航元素项目的按钮的颜色
    self.navigationController.navigationBar.tintColor = [UIColor greenColor];
    
    self.title = @"根视图";
    
    //隐藏导航栏
    self.navigationController.navigationBar.hidden = NO;
    self.navigationController.navigationBarHidden = NO;
    
    UIBarButtonItem *btn = [[UIBarButtonItem alloc]initWithTitle:@"右侧按钮" style:UIBarButtonItemStylePlain target:nil action:nil];
    
    self.navigationItem.rightBarButtonItem = btn;
    
    //工具栏
    
    //工具栏的隐藏
    self.navigationController.toolbarHidden = NO;
    
    self.navigationController.toolbar.translucent = YES;
    
    UIBarButtonItem *btn01 = [[UIBarButtonItem alloc]initWithTitle:@"left" style:UIBarButtonItemStylePlain target:nil action:nil];

    UIBarButtonItem *btn02 = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemCamera target:self action:@selector(pressNext)];
    
    UIBarButtonItem *btn03 = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAction target:nil action:nil];
    
    //固定宽度占位按钮 UIBarButtonSystemItemFixedSpace
    UIBarButtonItem *btnF01 = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    btnF01.width = 100;
    
    //自动检测宽度按钮 UIBarButtonSystemItemFlexibleSpace
    UIBarButtonItem *btnF02 = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    
    NSArray *arrayBtns = [NSArray arrayWithObjects:btn01,btnF02,btn02,btnF02,btn03, nil];
    
    self.toolbarItems = arrayBtns;
    
    self.navigationController.toolbar.barStyle = UIBarStyleBlack;
    
    self.navigationController.toolbar.tintColor = [UIColor whiteColor];
}

-(void)pressNext
{
    VCSecond *vcSecond = [[VCSecond alloc]init];
    [self.navigationController pushViewController:vcSecond animated:YES];
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
