//
//  ViewController.m
//  05-ios-自动布局子视图
//
//  Created by Rick on 2017/6/6.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _superView = [[UIView alloc]initWithFrame:CGRectMake(20, 20, 180, 280)];
    _superView.backgroundColor = [UIColor blueColor];
    
    _label01 = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 40, 40)];
    _label01.text = @"1";
    _label01.textAlignment = NSTextAlignmentCenter;
    _label01.backgroundColor = [UIColor orangeColor];
    
    _label02 = [[UILabel alloc]initWithFrame:CGRectMake(180-40, 0, 40, 40)];
    _label02.text = @"2";
    _label02.textAlignment = NSTextAlignmentCenter;
    _label02.backgroundColor = [UIColor orangeColor];
    
    _label03 = [[UILabel alloc]initWithFrame:CGRectMake(180-40, 280-40, 40, 40)];
    _label03.text = @"3";
    _label03.textAlignment = NSTextAlignmentCenter;
    _label03.backgroundColor = [UIColor orangeColor];
    
    _label04 = [[UILabel alloc]initWithFrame:CGRectMake(0, 280-40, 40, 40)];
    _label04.text = @"4";
    _label04.textAlignment = NSTextAlignmentCenter;
    _label04.backgroundColor = [UIColor orangeColor];
    
    _viewCenter = [[UIView alloc]initWithFrame:CGRectMake(0, 0, _superView.bounds.size.width, 40)];
    _viewCenter.center = CGPointMake(180/2, 280/2);
    _viewCenter.backgroundColor = [UIColor greenColor];

    [_superView addSubview:_label01];
    [_superView addSubview:_label02];
    [_superView addSubview:_label03];
    [_superView addSubview:_label04];
    [_superView addSubview:_viewCenter];
    [self.view addSubview:_superView];
    
    
}

-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    static BOOL isLarge = NO;
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1];
    //距离父视图上部下部和宽度都可随比例变化
    _viewCenter.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleTopMargin |UIViewAutoresizingFlexibleBottomMargin;
    
    //试图距离父视图左侧可随比例变化
    _label02.autoresizingMask = UIViewAutoresizingFlexibleLeftMargin;
    
    //试图距离父视图左侧上部可随比例变化
    _label03.autoresizingMask = UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleLeftMargin;
    
    //试图距离父视图上部可随比例变化
    _label04.autoresizingMask = UIViewAutoresizingFlexibleTopMargin;
    
    //点击变换isLarge的值（Yes No）并变化父视图的大小
    if (isLarge == NO)
        {
            _superView.frame = CGRectMake(10, 10, 300, 480);
        }
    else
        {
            _superView.frame=CGRectMake(20, 20, 180, 280);
        }
    
    [UIView commitAnimations];
    
    isLarge = !isLarge;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
