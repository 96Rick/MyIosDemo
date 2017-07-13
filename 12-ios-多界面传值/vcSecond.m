//
//  vcSecond.m
//  12-ios-多界面传值
//
//  Created by Rick on 2017/6/30.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "vcSecond.h"

@interface vcSecond ()

@end

@implementation vcSecond

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor orangeColor];
    
    UIBarButtonItem *btnChange = [[UIBarButtonItem alloc] initWithTitle:@"改变颜色" style:UIBarButtonItemStyleDone target:self action:@selector(pressChange)];
    self.navigationItem.rightBarButtonItem = btnChange ;
    
}

//点击按钮时触发代理事件
-(void) pressChange
{
    //代理对象调用时间函数
    [_delegate changeColor:[UIColor redColor]];
    
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
