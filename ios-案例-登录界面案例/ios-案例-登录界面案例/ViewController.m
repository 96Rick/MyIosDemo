//
//  ViewController.m
//  ios-案例-登录界面案例
//
//  Created by Rick on 2017/5/18.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _lbUserName = [[UILabel alloc]initWithFrame:CGRectMake(20, 60, 80, 40)];
    _lbUserName.text = @"用户名";
    _lbUserName.font = [UIFont systemFontOfSize:15];
    _lbUserName.textAlignment = NSTextAlignmentLeft;
    
    
    _lbPassWord = [[UILabel alloc]initWithFrame:CGRectMake(20, 140, 80, 40)];
    _lbPassWord.text = @"密码";
    _lbPassWord.font = [UIFont systemFontOfSize:15];
    _lbPassWord.textAlignment = NSTextAlignmentLeft;
    
    
    _tfUserName = [[UITextField alloc] initWithFrame:CGRectMake(120, 60, 180, 40)];
    _tfUserName.placeholder = @"请输入用户名";
    _tfUserName.borderStyle = UITextBorderStyleRoundedRect;
    
    
    _tfUserPassWord = [[UITextField alloc]initWithFrame:CGRectMake(120, 140, 180, 40)];
    _tfUserPassWord.placeholder = @"请输入密码";
    _tfUserPassWord.borderStyle = UITextBorderStyleRoundedRect;
    _tfUserPassWord.secureTextEntry = YES;
    
    
    _btLogin = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _btLogin.frame = CGRectMake(120, 300, 80, 40);
    [_btLogin setTitle:@"登录" forState:UIControlStateNormal];
    [_btLogin addTarget:self action:@selector(pressLogin) forControlEvents:UIControlEventTouchUpInside];
    
    
    _btRegister = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _btRegister.frame = CGRectMake(120, 360, 80, 40);
    [_btRegister setTitle:@"注册" forState:UIControlStateNormal];
    [_btRegister addTarget:self action:@selector(pressRegister) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:_lbUserName];
    [self.view addSubview:_lbPassWord];
    [self.view addSubview:_tfUserName];
    [self.view addSubview:_tfUserPassWord];
    [self.view addSubview:_btLogin];
    [self.view addSubview:_btRegister];
    
}


- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [_tfUserName resignFirstResponder];
    [_tfUserPassWord resignFirstResponder];
    
}



- (void) pressLogin
{
    NSString* strName = @"Rick";
    NSString* StrPass = @"123456";
    
    
    NSString* strTextName = _tfUserName.text;
    NSString* strTextPass = _tfUserPassWord.text;
    
    
    if ([strName isEqualToString:strTextName] && [StrPass isEqualToString:strTextPass]) {
        NSLog(@"用户名密码正确！");
        
        UIAlertView* alView = [[UIAlertView alloc]initWithTitle:@"提示" message:@"登录成功" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
        
        [alView show];
    }
    else
    {
        UIAlertView* alView = [[UIAlertView alloc]initWithTitle:@"提示" message:@"登录失败，请检查用户名密码" delegate:nil cancelButtonTitle:@"Sure" otherButtonTitles:  nil];
        
        [alView show];
    }
    
}


- (void) pressRegister
{
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
