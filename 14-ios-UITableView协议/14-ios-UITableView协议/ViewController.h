//
//  ViewController.h
//  14-ios-UITableView协议
//
//  Created by Rick on 2017/7/12.
//  Copyright © 2017年 Rick. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
<
UITableViewDelegate,
UITableViewDataSource
>
{
    UITableView *_tableView ;
    
    NSMutableArray *_arrayData ;
}

@end

