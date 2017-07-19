//
//  ViewController.h
//  18-ios-JSON数据解析
//
//  Created by Rick on 2017/7/14.
//  Copyright © 2017年 Rick. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
//数据视图代理协议
<
UITableViewDelegate,
UITableViewDataSource
>
{
    UITableView *_tableView ;
    NSMutableArray *_arrayBooks ;
}

@end

