//
//  ViewController.m
//  13-ios-UITableView
//
//  Created by Rick on 2017/7/12.
//  Copyright © 2017年 Rick. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //创建数据视图
    //p1：创建视图的位置
    //p2:数据视图的风格 ，plain：普通风格，Grouped：分组风格
    _tableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    
    //设置数据视图的代理对象
    _tableView.delegate = self ;
    //设置数据视图的数据代理对象
    _tableView.dataSource = self ;
    
    [self.view addSubview:_tableView] ;
    
}

//获取每组元素的个数（行数）
//是必须要实现的协议函数，程序在现实数据视图时会调用此函数
//返回值：表示每组元素的个数
//p1:数据视图对象本身
//p2:哪一组需要的行数
-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5 ;
}

//设定数据视图的组数
-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView
{
    return 3 ;
}

//创建tableview的单元格
-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellStr = @"cell";

    //创建一个单元格对象
    //p1：单元格的样式
    //P2:单元格的复用标记
    UITableViewCell *cell = [_tableView dequeueReusableCellWithIdentifier:cellStr] ;
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellStr];
    }


    NSString *str = [NSString stringWithFormat:@"第%ld组,第%ld组",indexPath.section,indexPath.row];
    
    cell.textLabel.text = str;
    
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
