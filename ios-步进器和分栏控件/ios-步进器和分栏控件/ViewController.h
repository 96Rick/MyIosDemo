//
//  ViewController.h
//  ios-步进器和分栏控件
//
//  Created by Rick on 2017/5/15.
//  Copyright © 2017年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    //定义步进器对象
    UIStepper* _stepper;
    
    UISegmentedControl* _segControl;
    
}

@property(retain,nonatomic)UIStepper*  stepper;
@property(retain,nonatomic)UISegmentedControl* segControl;

@end

