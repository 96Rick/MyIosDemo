//
//  VCThird.m
//  07-ios-导航控制器的切换
//
//  Created by Rick on 2017/6/8.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "VCThird.h"

@interface VCThird ()

@end

@implementation VCThird

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor orangeColor];
    
    self.title = @"声音";
    
    //当自己设定左侧按钮时
    //返回按钮会被左侧按钮自己替换
    UIBarButtonItem *btnLeft = [[UIBarButtonItem alloc]initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:self action:@selector(pressBack)];
    
    self.navigationItem.leftBarButtonItem = btnLeft;
    
    
    UIBarButtonItem *btnRight = [[UIBarButtonItem alloc]initWithTitle:@"返回根视图" style:UIBarButtonItemStylePlain target:self action:@selector(pressNext)];

    self.navigationItem.rightBarButtonItem = btnRight;
}

-(void)pressBack
{
    NSLog(@"返回上一级");
    
    //当前视图控制器弹出，返回到上一级界面
    [self.navigationController popViewControllerAnimated:YES];
}

-(void) pressNext
{
    [self.navigationController popToRootViewControllerAnimated:YES];
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
