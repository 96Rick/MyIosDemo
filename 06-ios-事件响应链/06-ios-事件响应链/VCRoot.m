//
//  VCRoot.m
//  06-ios-事件响应链
//
//  Created by Rick on 2017/6/7.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "VCRoot.h"

@interface VCRoot ()

@end

@implementation VCRoot

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor blueColor];
    
    
    _mainView = [[MainView alloc]initWithFrame:CGRectMake(50, 50, 200, 300)];
    _mainView.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:_mainView];
    
    
    _subView = [[subView alloc]initWithFrame:CGRectMake(30, 30, 100, 200)];
    _subView.backgroundColor = [UIColor purpleColor];
    [_mainView addSubview:_subView];
       
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    
    NSLog(@"VCRoot事件响应 next == %@",self.nextResponder);
    
    [super touchesBegan:touches withEvent:event];
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
