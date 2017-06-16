//
//  MyApplication.m
//  06-ios-事件响应链
//
//  Created by Rick on 2017/6/7.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "MyApplication.h"

@implementation MyApplication
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"MyApplication 事件响应");
}

@end
