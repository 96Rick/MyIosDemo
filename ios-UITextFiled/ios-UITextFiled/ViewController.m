//
//  ViewController.m
//  ios-UITextFiled
//
//  Created by Rick on 2017/5/18.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize textField = _textFiled;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.textField = [[UITextField alloc]initWithFrame:CGRectMake(100, 100, 180, 40)];
    self.textField.text = @"用户名";
    self.textField.font = [UIFont systemFontOfSize:15];
    self.textField.textColor = [UIColor blackColor];
    
    self.textField.borderStyle = UITextBorderStyleRoundedRect;
    self.textField.keyboardType = UIKeyboardTypeDefault;
    self.textField.placeholder = @"请输入用户名";
    self.textField.secureTextEntry = NO;
    
    [self.view addSubview:self.textField];

    self.textField.delegate = self;
}
//点击屏幕空白处调用此函函数（收回键盘）
- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    
    [self.textField resignFirstResponder];
}

- (void) textFieldDidBeginEditing:(UITextField *)textField
{
    self.textField.text = @"";
    NSLog(@"开始输入");
}


-(void) textFieldDidEndEditing:(UITextField *)textField
{
    NSLog(@"编辑结束");
}


//默认为yes，no的话不能进行输入
- (BOOL) textFieldShouldBeginEditing:(UITextField *)textField
{
    return YES;
}


- (BOOL) textFieldShouldEndEditing:(UITextField *)textField
{
    return YES;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
