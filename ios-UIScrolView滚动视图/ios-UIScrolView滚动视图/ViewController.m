//
//  ViewController.m
//  ios-UIScrolView滚动视图
//
//  Created by Rick on 2017/5/18.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //创建一个滚动视图
    UIScrollView* sv = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, 320, 576)];
    
    //是否按照整页来滚动视图
    sv.pagingEnabled = YES;
    //是否开启滚动效果
    sv.scrollEnabled = YES;
    //设置画布的大小，画布显示在滚动视图内部，一般大于frame大小
    sv.contentSize = CGSizeMake(320*9, 576);
    //是否可以边缘弹动效果
    sv.bounces = YES;
    //开启横向弹动
    sv.alwaysBounceHorizontal = YES;
    //开启纵向弹动
    sv.alwaysBounceVertical = YES;
    //是否显示横向滚动条
    sv.showsHorizontalScrollIndicator = YES;
    //是否显示纵向滚动条
    sv.showsVerticalScrollIndicator = YES;
    //设置背景颜色
    sv.backgroundColor = [UIColor yellowColor];
    
    
    //使用循环创建九张图片
    for (int i =0; i<9; i++)
    {
        NSString* strName = [NSString stringWithFormat:@"%d.JPG",i+1];
        
        UIImage* image = [UIImage imageNamed:strName];
        
        UIImageView* iView = [[UIImageView alloc] initWithImage:image];
        
        iView.frame = CGRectMake(320*i, 0, 320, 576);
        
        [sv addSubview:iView];
        
    }
 
    [self.view addSubview:sv];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
