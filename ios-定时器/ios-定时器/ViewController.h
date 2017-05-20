//
//  ViewController.h
//  ios-定时器
//
//  Created by Rick on 2017/5/12.
//  Copyright © 2017年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    //定义一个定时器对象
    //可以每隔规定的时间发送一个消息
    //通过消息来调用相应的事件函数
    //通过此函数可以在固定时间来完成一个功能
    NSTimer* _timerView;
}
//定时器的属性对象
@property(retain,nonatomic) NSTimer* timerView;

@end

