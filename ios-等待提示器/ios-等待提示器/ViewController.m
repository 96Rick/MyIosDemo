//
//  ViewController.m
//  ios-等待提示器
//
//  Created by Rick on 2017/5/16.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

@synthesize alertView = _alertView;
@synthesize activityIndicatorView = _activityIndicator;


- (void)viewDidLoad {
    [super viewDidLoad];
    
    for (int i = 0; i<2; i++) {
        UIButton* btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        btn.frame = CGRectMake(100, 100+100*i, 100, 40);
        
        if (i==0)
        {
            [btn setTitle:@"警告对话框" forState:UIControlStateNormal];
        }
        else if (i == 1)
        {
            [btn setTitle:@"等待指示器" forState:UIControlStateNormal];
        }
    
        btn.tag= 101+i;
        [btn addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchUpInside];
        
        [self.view addSubview:btn];
    
    }
}


-(void) pressBtn:(UIButton*) btn
{
    if (btn.tag == 101)
    {
        
        
        //P1:对话框标题
        //P2:提示信息
        //P3:处理按钮事件的代理对象
        //P4:取消按钮的文字
        //P5:其他按钮的文字
        //P6。。。:添加其他按钮
        
        
        
        _alertView = [[UIAlertView alloc]initWithTitle:@"警告" message:@"手机电量不足20%" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"OK", nil];
        
        [_alertView show];
        
        
        
        
    }
    else if (btn.tag == 102)
    {
        //停止并隐藏
        [_activityIndicator stopAnimating];
        
        //宽高不可变
        
        _activityIndicator = [[UIActivityIndicatorView alloc]initWithFrame:CGRectMake(100, 300, 80, 80)];
        
        _activityIndicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyleWhiteLarge;
        
        [self.view addSubview:_activityIndicator];
        
        //启动并显示
        [_activityIndicator startAnimating];
        self.view.backgroundColor = [UIColor blackColor];
        
        
    }
    
    
}


- (void) alertView:(UIAlertView*)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSLog(@"index = %li\n",buttonIndex);
    if (buttonIndex == 0)
    {
        NSLog(@"it's OK!");

    }
    else if(buttonIndex == 1 ){
        
        _alertView2 = [[UIAlertView alloc] initWithTitle:@"警告" message:@"是否要进入低电量模式？" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"Yes", nil];
        
        
        [_alertView2 show];
        
    }
    
    
}


- (void) alertView:(UIAlertView *)alertView willDismissWithButtonIndex:(NSInteger)buttonIndex
{
    NSLog(@"即将消失");
    
}

- (void) alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex
{
    
    NSLog(@"已经消失");
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
