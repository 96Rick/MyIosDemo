//
//  SuperView.h
//  04-ios-手动布局子视图
//
//  Created by Rick on 2017/6/6.
//  Copyright © 2017年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SuperView : UIView
{
    UIView *_view01;
    UIView *_view02;
    UIView *_view03;
    UIView *_view04;
    UIView *_view05;
}

-(void) createSubview;

@end
