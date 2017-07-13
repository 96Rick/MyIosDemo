//
//  VCImageShow.m
//  ios-照片墙案例
//
//  Created by Rick on 2017/6/9.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "VCImageShow.h"
#pragma mark –
#pragma mark onClick

@interface VCImageShow ()

@end

@implementation VCImageShow

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"图片展示";
    
    _imageView = [[UIImageView alloc]init];
    _imageView.frame = [UIScreen mainScreen].bounds ;  //(0, 0, 320, 520);
    //方法二：
    //_imageView.image = _image;
    
    _imageView.image = _image;
    _imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"%lu.jpg",_imageTag - 100]];
    
    _imageView.userInteractionEnabled = YES;
    

    
    
    //一个试图对象只能有一个根视图，当把视图添加到新父视图中时，将从原来的父视图中删除掉了
    [self.view addSubview:_imageView];
    
}


-(BOOL)prefersStatusBarHidden{
    
    return YES;
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    
    
    static BOOL isDisplay = YES;
    
    [super.navigationController setNavigationBarHidden:isDisplay animated:YES];
    
    isDisplay = !isDisplay;
    
    


}



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
