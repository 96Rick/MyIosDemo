//
//  ViewController.m
//  ios-UISlider
//
//  Created by Rick on 2017/5/13.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize  slider =_slider;
@synthesize pView = _progressView;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //进度条
    
    _progressView = [[UIProgressView alloc]initWithFrame:CGRectMake(20, 100, 250, 40)];
    _progressView.progressTintColor = [UIColor orangeColor];
    _progressView.trackTintColor = [UIColor blackColor];
    //设置进度条的进度之从零到一
    _progressView.progress = 0.5;
    
    //设置进度条的风格特征
    _progressView.progressViewStyle = UIProgressViewStyleBar;
    
    [self.view addSubview:_progressView];
    
    //——————————————————————————————————————————————————————
    
    //滑动条
    _slider = [[UISlider alloc]initWithFrame:CGRectMake(20, 101, 250, 40)];
    
    
    //滑动条的值可以为负值
    _slider.maximumValue = 100;
    _slider.minimumValue = -100;
    
    //设置滑动条的位置
    _slider.value = 0;
    
    
    _slider.minimumTrackTintColor = [UIColor redColor];
    _slider.maximumTrackTintColor = [UIColor whiteColor];
    self.view.backgroundColor = [UIColor grayColor];
    _slider.thumbTintColor = [UIColor whiteColor];
    
    [_slider addTarget:self action:@selector(pressSlider) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:_slider];
    

}

-(void)pressSlider
{
    _progressView.progress =(_slider.value - _slider.minimumValue)/(_slider.maximumValue-_slider.minimumValue);
    
    
    NSLog(@"value = %f",_slider.value);
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
