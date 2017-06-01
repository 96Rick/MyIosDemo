//
//  ViewController.h
//  ios-UIGesture高级手势
//
//  Created by Rick on 2017/5/31.
//  Copyright © 2017年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIGestureRecognizerDelegate>
{
    //定义一个缩放手势，用来对视图可以进行放大缩小
    //pinch：捏合
    UIPinchGestureRecognizer *_pinchGes;
    //定义一个旋转手势，用来旋转视图
    UIRotationGestureRecognizer *_rotationGes;
    
}


@end

