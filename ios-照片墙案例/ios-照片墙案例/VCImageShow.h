//
//  VCImageShow.h
//  ios-照片墙案例
//
//  Created by Rick on 2017/6/9.
//  Copyright © 2017年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VCImageShow : UIViewController

//图像视图的tag
@property (nonatomic,assign) NSInteger imageTag;
//图像对象
@property (nonatomic,retain) UIImage * image;
//图像视图对象
@property (nonatomic,retain) UIImageView *imageView;

@end
