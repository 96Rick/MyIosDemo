//
//  VCRoot.m
//  03-ios-XIB创建登录界面
//
//  Created by Rick on 2017/6/2.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "VCRoot.h"

@interface VCRoot ()

@end

@implementation VCRoot

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    _TFPassWord.secureTextEntry = YES;
    
    
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

- (IBAction)pressLogin:(UIButton *)sender {
    NSString *uName = @"Rick" ;
    NSString *upass = @"123456" ;
   
    NSString *TFName = _TFUserName.text;
    NSString *TFPass = _TFPassWord.text;
    
    
    
    
    if ([TFName isEqualToString:uName] && [TFPass isEqualToString:upass] ) {
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"提示" message:@"用户名密码正确，登录成功" delegate:nil cancelButtonTitle:@"Cancel" otherButtonTitles:@"OK", nil];
        
        [alert show];
        
    }
//    else if([_TFUserName.text isEqualToString:uName] && ![_TFPassWord.text isEqualToString:upass] | [_TFPassWord.text isEqualToString:upass] && ![_TFUserName.text isEqualToString:uName] | ![_TFUserName.text isEqualToString:uName] && ![_TFPassWord.text isEqualToString:upass])
    
   
    else if([TFName isEqualToString:@""] && [TFPass isEqualToString:@""])
    {
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:nil message:@"请输入用户名和密码" delegate:nil cancelButtonTitle:@"Cancel" otherButtonTitles:@"OK", nil];
        [alert show];
    }
    
    else
    {
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"提示" message:@"用户名密码不正确，登录失败！" delegate:nil cancelButtonTitle:@"Cancel" otherButtonTitles:@"OK", nil];
        
        [alert show];
    }
}

-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [_TFPassWord resignFirstResponder];
    [_TFUserName resignFirstResponder];
}



- (IBAction)pressRegister:(UIButton *)sender {
}
@end
