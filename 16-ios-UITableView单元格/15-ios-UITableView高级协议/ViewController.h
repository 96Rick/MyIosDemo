//
//  ViewController.h
//  15-ios-UITableView高级协议
//
//  Created by Rick on 2017/7/13.
//  Copyright © 2017年 Rick. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
<
UITableViewDelegate,
UITableViewDataSource
>
{
    UITableView *_tabView ;
    NSMutableArray *_arrayDate ;
    
    UIBarButtonItem *_btnEdit ;
    UIBarButtonItem *_btnFinish ;
    UIBarButtonItem *_btnDelete ;
    BOOL _isEdit ;
}


@end

