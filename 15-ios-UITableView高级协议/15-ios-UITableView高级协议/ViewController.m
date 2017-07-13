//
//  ViewController.m
//  15-ios-UITableView高级协议
//
//  Created by Rick on 2017/7/13.
//  Copyright © 2017年 Rick. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _tabView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain] ;
    
    //自动调整子视图的大小
    _tabView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth ;
    
    _tabView.delegate = self ;
    _tabView.dataSource = self ;
    
    //数据视图的头部视图，尾部视图
    _tabView.tableHeaderView = nil ;
    _tabView.tableFooterView = nil ;
    
    [self.view addSubview:_tabView];
    
    //初始化数据源数组
    _arrayDate = [[NSMutableArray alloc]init] ;
    
    for (int i = 1 ; i < 20 ; i++)
    {
        NSString *str = [NSString stringWithFormat:@"A %d",i] ;
        
        [_arrayDate addObject:str] ;
    }
    
    //当数据视图的数据源发生变化时，来更新数据视图，重新加载数据
    [_tabView reloadData];

    [self creatBtn];

}

- (void) creatBtn
{
    _isEdit = NO ;
    _btnEdit = [[UIBarButtonItem alloc] initWithTitle:@"Edit" style:UIBarButtonItemStylePlain target:self action:@selector(pressEdit)] ;
    _btnFinish = [[UIBarButtonItem alloc] initWithTitle:@"Finish" style:UIBarButtonItemStylePlain target:self action:@selector(pressFinish)] ;
    _btnDelete = [[UIBarButtonItem alloc] initWithTitle:@"Delete" style:UIBarButtonItemStylePlain target:self action:@selector(pressDelete)] ;

    self.navigationItem.rightBarButtonItem = _btnEdit ;
}

- (void) pressEdit
{
    _isEdit = YES ;
    self.navigationItem.rightBarButtonItem = _btnFinish ;
    [_tabView setEditing:YES animated:YES];
    self.navigationItem.leftBarButtonItem = _btnDelete ;
}

- (void) pressFinish
{
    _isEdit = NO ;
    self.navigationItem.rightBarButtonItem = _btnEdit ;
    [_tabView setEditing:NO];
    self.navigationItem.leftBarButtonItem= nil ;
}


- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _arrayDate.count ;
}

- (NSInteger) numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1 ;
}

- (UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString * strID = @"ID" ;
    //尝试获得可以复用的单元格
    //如果得不到，返回空nil
    UITableViewCell *cell = [_tabView dequeueReusableCellWithIdentifier:strID] ;
    
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:strID] ;
    }
    
    cell.textLabel.text = [_arrayDate objectAtIndex:indexPath.row] ;
    
    return cell ;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
