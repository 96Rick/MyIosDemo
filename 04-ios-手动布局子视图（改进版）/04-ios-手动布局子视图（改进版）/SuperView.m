//
//  SuperView.m
//  04-ios-手动布局子视图（改进版）
//
//  Created by Rick on 2017/6/6.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "SuperView.h"

@implementation SuperView
-(void)creatSubView
{
    _view01 = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 40, 40)];
    _view02 = [[UIView alloc]initWithFrame:CGRectMake(self.bounds.size.width-40, 0, 40, 40)];
    _view03 = [[UIView alloc]initWithFrame:CGRectMake(self.bounds.size.width-40, self.bounds.size.height-40, 40, 40)];
    _view04 = [[UIView alloc]initWithFrame:CGRectMake(0, self.bounds.size.height-40, 40, 40)];
    _view05 = [[UIView alloc]initWithFrame:CGRectMake(0, self.bounds.size.height/2-20, self.bounds.size.width, 40)];
    _view06 = [[UIView alloc]initWithFrame:CGRectMake(self.bounds.size.width/2-20, 0, 40, self.bounds.size.height)];
    
    _view06.backgroundColor = _view05.backgroundColor = _view04.backgroundColor = _view03.backgroundColor = _view02.backgroundColor = _view01.backgroundColor = [UIColor redColor];
    
    [self addSubview:_view01];
    [self addSubview:_view02];
    [self addSubview:_view03];
    [self addSubview:_view04];
    [self addSubview:_view05];
    [self addSubview:_view06];
}

-(void)toLarge
{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.3];
    _view01.frame = CGRectMake(0, 0, 84, 84);
    _view02.frame = CGRectMake(self.bounds.size.width-84, 0, 84, 84);
    _view03.frame = CGRectMake(self.bounds.size.width-84, self.bounds.size.height-84, 84, 84);
    _view04.frame = CGRectMake(0, self.bounds.size.height-84, 84, 84);
    _view05.frame = CGRectMake(0, self.bounds.size.height/2-42, self.bounds.size.width, 84);
    _view06.frame = CGRectMake(self.bounds.size.width/2-42, 0, 84, self.bounds.size.height);
    [UIView commitAnimations];
}

-(void)toSmall
{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.3];
    _view01.frame = CGRectMake(0, 0, 40, 40);
    _view02.frame = CGRectMake(self.bounds.size.width-40, 0, 40, 40);
    _view03.frame = CGRectMake(self.bounds.size.width-40, self.bounds.size.height-40, 40, 40);
    _view04.frame = CGRectMake(0, self.bounds.size.height-40, 40, 40);
    _view05.frame = CGRectMake(0, self.bounds.size.height/2-20, self.bounds.size.width, 40);
    _view06.frame = CGRectMake(self.bounds.size.width/2-20, 0, 40, self.bounds.size.height);
    [UIView commitAnimations];
    
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
