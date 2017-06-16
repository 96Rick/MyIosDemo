 //
//  VCRoot.m
//  ios-照片墙案例
//
//  Created by Rick on 2017/6/9.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "VCRoot.h"
#import "VCImageShow.h"

@interface VCRoot ()

@end

@implementation VCRoot

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationController.navigationBar.translucent = YES;
    self.title = @"照片墙";
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    self.navigationController.navigationBar.barTintColor = [UIColor grayColor];
    
    //设置title的颜色
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor blackColor]}];

    //创建一个滚动视图
    UIScrollView *sv = [[UIScrollView alloc]initWithFrame:CGRectMake(12, 10, 300, 540)];
    
    //设置画布大小
    sv.contentSize = CGSizeMake(300, 480*3);
    //设置是否显示滚动条
    sv.showsVerticalScrollIndicator = NO;
    
    self.view.backgroundColor = [UIColor blackColor];
    
    sv.userInteractionEnabled = YES;
    
    for (int i = 0 ; i < 27; i++)
    {
        
        NSString *strName = [NSString stringWithFormat:@"%d.jpg",i+1];
        
        UIImage *image = [UIImage imageNamed:strName];
        
        UIImageView *iView = [[UIImageView alloc]initWithImage:image];
        
        iView.frame = CGRectMake(3+(i%3)*100, (i/3)*165+10, 90, 150);
        
        [sv addSubview:iView];
        
        iView.userInteractionEnabled = YES;
        
        //创建点击手势
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(pressTap:)];
        
        tap.numberOfTapsRequired = 1;
        
        tap.numberOfTouchesRequired = 1;
        
        
        [iView addGestureRecognizer:tap];
        
        //图像对象的tag值;
        iView.tag = 101+i;
        
        
    }
    
    [self.view addSubview:sv];
    
}



-(void)pressTap:(UITapGestureRecognizer*) tap
{
    UIImageView *imageView = (UIImageView*)tap.view ;
    
    VCImageShow *imageShow = [[VCImageShow alloc]init];
    
    imageShow.imageTag = imageView.tag;
    
    [self.navigationController pushViewController:imageShow animated:YES];
}

/*方法二
-(void)pressTap:(UITapGestureRecognizer*) tap
{
    NSLog(@"点击事件触发！");
    
    
    UIImageView *imageView = (UIImageView*)tap.view;
    
    //创建显示视图控制器
    VCImageShow *imageShow = [[VCImageShow alloc]init];
    //点击图像视图赋值
    imageShow.image = imageView.image ;
    //将控制器推出
    [self.navigationController pushViewController:imageShow animated:YES];
    
    
}
*/

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
