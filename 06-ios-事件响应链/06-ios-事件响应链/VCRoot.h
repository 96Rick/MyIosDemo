//
//  VCRoot.h
//  06-ios-事件响应链
//
//  Created by Rick on 2017/6/7.
//  Copyright © 2017年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MainView.h"
#import "subView.h"

@interface VCRoot : UIViewController
{
    MainView *_mainView;
    subView *_subView;
    
}

@end
