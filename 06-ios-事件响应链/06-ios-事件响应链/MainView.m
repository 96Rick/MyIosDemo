//
//  MainView.m
//  06-ios-事件响应链
//
//  Created by Rick on 2017/6/7.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "MainView.h"

@implementation MainView
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    
    NSLog(@"MainView 响应事件 next == %@",self.nextResponder);
    
    [super touchesBegan:touches withEvent:event];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
