//
//  ViewController.h
//  ios-UISlider
//
//  Created by Rick on 2017/5/13.
//  Copyright © 2017年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    //进度条
    //一般用来表示下载，视频播放进度
    UIProgressView* _progressView;
    
    //滑动条
    //一般用来进行调整音乐的音量等
    UISlider* _slider ;
}

@property(retain,nonatomic) UIProgressView* pView;
@property(retain,nonatomic) UISlider*       slider;


@end

