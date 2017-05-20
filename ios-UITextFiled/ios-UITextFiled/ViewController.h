//
//  ViewController.h
//  ios-UITextFiled
//
//  Created by Rick on 2017/5/18.
//  Copyright © 2017年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate>
{
    UITextField* _textFiled ;
    //文本输入区域，例如用户名密码等，用来输入文本文字的内容区域
    //只能输入单行文本,
}

@property(retain,nonatomic)UITextField* textField;

@end

