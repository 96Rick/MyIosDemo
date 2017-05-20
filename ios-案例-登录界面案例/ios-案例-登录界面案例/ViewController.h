//
//  ViewController.h
//  ios-案例-登录界面案例
//
//  Created by Rick on 2017/5/18.
//  Copyright © 2017年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    //登录界面组成：
    //用户名：输入框
    //密码提示：输入框
    //登录按钮
    //注册按钮
    
    UILabel* _lbUserName;
    UILabel* _lbPassWord;
    
    UITextField* _tfUserName;
    UITextField* _tfUserPassWord;
    
    UIButton* _btLogin;
    UIButton* _btRegister;
    
    
}


@end

