//
//  ViewController.h
//  20-ios-NSThread
//
//  Created by Rick on 2017/7/16.
//  Copyright © 2017年 Rick. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    //定义线程对象
    NSThread *_thread01 ;
    NSThread *_thread02 ;
    //定义一个计数器
    NSInteger _counter ;
    //定义一个线程锁
    NSLock * _lock ;
}


@end

