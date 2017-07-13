//
//  ViewController.h
//  13-ios-UITableView
//
//  Created by Rick on 2017/7/12.
//  Copyright © 2017年 Rick. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
<
//实现数据视图的普通代理协议
//数据视图的普通事件处理
UITableViewDelegate,
//实现数据视图的数据代理协议
//处理数据视图的数据代理
UITableViewDataSource
>
{
    //定义数据视图对象
    //数据视图用来显示大量类似相同格式的大量信息的视图
    //例如：通讯录，qq好友，微信朋友圈，微博等等
    UITableView *_tableView;
}


@end

