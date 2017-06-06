//
//  SuperView.m
//  04-ios-手动布局子视图
//
//  Created by Rick on 2017/6/6.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "SuperView.h"

@implementation SuperView

-(void) createSubview
{
    //左上角
    _view01 = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 40, 40)];
    //右上角
    _view02 = [[UIView alloc]initWithFrame:CGRectMake(self.bounds.size.width-40, 0, 40, 40)];
    //右下角
    _view03 = [[UIView alloc]initWithFrame:CGRectMake(self.bounds.size.width-40, self.bounds.size.height-40, 40, 40)];
    //左下角
    _view04 = [[UIView alloc]initWithFrame:CGRectMake(0, self.bounds.size.height-40, 40, 40)];
    
    
    _view05 = [[UIView alloc]initWithFrame:CGRectMake(0, (self.bounds.size.height/2)-20, self.bounds.size.width, 40)] ;

    
    _view05.backgroundColor = _view04.backgroundColor = _view03.backgroundColor = _view02.backgroundColor = _view01.backgroundColor = [UIColor orangeColor];
    
    [self addSubview:_view01];
    [self addSubview:_view02];
    [self addSubview:_view03];
    [self addSubview:_view04];
    [self addSubview:_view05];
}
//当需要重新布局时调用
//通过此函数重新设定子视图的位置
//手动调整子视图的位置
-(void) layoutSubviews
{
    
    
    
    [UIView beginAnimations:nil context:nil] ;
    [UIView setAnimationDuration:0.5];

    _view01.frame = CGRectMake(0, 0, 40, 40) ;
    _view02.frame = CGRectMake(self.bounds.size.width-40, 0, 40, 40) ;
    _view03.frame = CGRectMake(self.bounds.size.width-40, self.bounds.size.height-40, 40, 40) ;
    _view04.frame = CGRectMake(0, self.bounds.size.height-40, 40, 40) ;
     _view05.frame = CGRectMake(0, (self.bounds.size.height/2)-20, self.bounds.size.width, 40) ;
    [UIView commitAnimations] ;
   
    //self.bounds.size.height/2-
}

@end
