//
//  ViewController.m
//  18-ios-JSON数据解析
//
//  Created by Rick on 2017/7/14.
//  Copyright © 2017年 Rick. All rights reserved.
//

#import "ViewController.h"
#import "BookModel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _tableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStyleGrouped ] ;
    _tableView.delegate = self ;
    _tableView.dataSource = self ;
    [self.view addSubview:_tableView];
    
    [self parseData] ;
    
}

-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1 ;
}
-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _arrayBooks.count ;
}
-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *strID = @"ID" ;
    UITableViewCell *cell = [_tableView dequeueReusableCellWithIdentifier:strID ];
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:strID ] ;
    }
    
    //获取对应的图书数据
    BookModel * book = [_arrayBooks objectAtIndex:indexPath.row] ;
    //将书名赋值给文本的label
    cell.textLabel.text = book.mBookName ;
    
    return cell ;
}

-(void) parseData
{
    //获取json文件本地路径
    NSString *path = [[NSBundle mainBundle] pathForResource:@"DouBan" ofType:@"json"];
    
    //加载json文件为二进制文件
    NSData *data = [NSData dataWithContentsOfFile:path ] ;
    
    //字典对象解析，将json文件数据解析为字典格式
    NSDictionary *dicRoot = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil] ;
    
    //判断是否为字典
    if ([dicRoot isKindOfClass:[NSDictionary class]])
    {
        //开始解析数据
        _arrayBooks = [[NSMutableArray alloc]init] ;
        
        //解析跟数据
        NSArray *arrayEnter = [dicRoot objectForKey:@"enter"] ;
        
        //开始遍历数组对象
        for (int i = 0 ; i < arrayEnter.count; i++)
        {
            //
            NSDictionary *dicBook = [arrayEnter objectAtIndex:i];
            
            //获取书籍名字对象
            NSDictionary * bookNameDic = [dicBook objectForKey:@"title" ];
            
            NSString *bookName  =  [bookNameDic objectForKey:@"$t"];
            
            BookModel * book = [[BookModel alloc]init] ;
            
            book.mBookName = bookName ;
            
            
            NSArray *arrAttr = [dicRoot objectForKey:@"db:attribute"] ;
            for (int i = 0; i<arrAttr; i++)
            {
                NSDictionary *dic = [arrAttr objectAtIndex:i] ;
                NSString * strName = [dic objectForKey:@"@name"];
                
                if ([strName isEqualToString:@"price"] == YES)
                {
                    NSString * price = [dic objectForKey:@"$t"];
                    
                    book.mPrice = price ;
                }
                else if ([strName isEqualToString:@"publisher "] == YES)
                {
                    NSString *pub = [dic objectForKey:@"publisher"] ;
                    
                    book.mPublisher = pub ;
                }
            }
            
            //添加到数组中
            [_arrayBooks addObject:book] ;
            
        }
        
    }
    
    //更新数据视图数组
    [_tableView reloadData] ;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
