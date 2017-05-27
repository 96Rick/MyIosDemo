//
//  ViewController.h
//  ios-UIgesture基础
//
//  Created by Rick on 2017/5/26.
//  Copyright © 2017年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    // 定义一个缩放手势，对视图进行放大缩小
    //pinch：（捏合） 捏合手势
    UIPinchGestureRecognizer* _pinchGes;
    UIRotationGestureRecognizer* _rotGes;
    
    
}


@end

