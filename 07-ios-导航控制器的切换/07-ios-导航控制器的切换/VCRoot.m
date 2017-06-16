//
//  VCRoot.m
//  07-ios-导航控制器的切换
//
//  Created by Rick on 2017/6/8.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "VCRoot.h"
#import "VCSecond.h"

@interface VCRoot ()

@end

@implementation VCRoot

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //使导航栏透明
    self.navigationController.navigationBar.translucent = YES;
    
    //设置导航栏的风格颜色
    self.navigationController.navigationBar.barStyle = UIBarStyleBlackTranslucent;
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.title = @"设置";
    
    UIBarButtonItem *next = [[UIBarButtonItem alloc]initWithTitle:@"下一页" style:UIBarButtonItemStylePlain target:self action:@selector(pressNext)];
    
    self.navigationItem.rightBarButtonItem = next;
    
    
}

-(void)pressNext
{
    //创建一个新的视图控制器
    VCSecond *vcSecond = [[VCSecond alloc]init];
    
    //使用当前视图控制器的导航控制器对象
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
