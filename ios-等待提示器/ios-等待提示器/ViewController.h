//
//  ViewController.h
//  ios-等待提示器
//
//  Created by Rick on 2017/5/16.
//  Copyright © 2017年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIAlertViewDelegate>
{
    //警告器对话框对象
    UIAlertView* _alertView ;
    
    //等待提示对象
    //当下载或加载比较大的对象时，可以显示此控件，处于提示等待状态
    UIActivityIndicatorView* _activityIndicator ;
    
}

@property(retain,nonatomic) UIAlertView* alertView;
@property(retain,nonatomic) UIActivityIndicatorView* activityIndicatorView;

@end

