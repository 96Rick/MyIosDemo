//
//  vcFirst.m
//  12-ios-多界面传值
//
//  Created by Rick on 2017/6/30.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "vcFirst.h"
#import "vcSecond.h"

@interface vcFirst ()

@end

@implementation vcFirst

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    vcSecond *vc = [[vcSecond alloc]init];
   
    //将当前的控制器对象作为代理对象赋值
    vc.delegate = self ;
    
    [self.navigationController pushViewController:vc animated:YES];
}

-(void) changeColor:(UIColor *)color
{
    self.view.backgroundColor = color ;
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
