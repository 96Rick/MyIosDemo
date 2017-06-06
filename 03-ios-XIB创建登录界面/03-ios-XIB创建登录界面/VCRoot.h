//
//  VCRoot.h
//  03-ios-XIB创建登录界面
//
//  Created by Rick on 2017/6/2.
//  Copyright © 2017年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VCRoot : UIViewController

//使用XIB创建UILabel属性
//IBOutlet属性是在XIB中创建的
@property (weak, nonatomic) IBOutlet UILabel *mUserName;


//XIB密码属性
@property (weak, nonatomic) IBOutlet UILabel *mUserPassWord;

//XIB TFUserName
@property (weak, nonatomic) IBOutlet UITextField *TFUserName;

//XIB TFPassWord
@property (weak, nonatomic) IBOutlet UITextField *TFPassWord;
//XIB 登录按钮
@property (weak, nonatomic) IBOutlet UIButton *mBTLogIn;
//XIB 注册按钮
@property (weak, nonatomic) IBOutlet UIButton *mBTRegister;

//按钮函数事件同步
- (IBAction)pressLogin:(UIButton *)sender;

//注册同步事件函数
- (IBAction)pressRegister:(UIButton *)sender;

@end
