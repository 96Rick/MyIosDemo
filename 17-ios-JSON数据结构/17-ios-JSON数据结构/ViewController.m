//
//  ViewController.m
//  17-ios-JSON数据结构
//
//  Created by Rick on 2017/7/14.
//  Copyright © 2017年 Rick. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//数组字典
static NSDictionary *dic ;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //获取json文件在手机中的路径
    //mainBundle：获取主资源包路径
    //pathForResource：获取json文件的全部路径
    //返回一个字符来获取全路径
    //参数一：文件的名字
    //参数二：文件扩展名
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Douban" ofType:@"json"];
    
    //将文件读取出来，作为二进制文件存储到内存中
    //参数：文件路径
    //返回值为二进制文件格式
    NSData *dataJson = [NSData dataWithContentsOfFile:path] ;
    
    
    //NSJSONSerialization:将数据解析类
    //参数一：二进制的数据对象
    //参数二：解析方式，默认解析方式解析
    //参数三：错误信息对象，可以传nil
    //返回值：将解析后的数据保存在字典中返回
    dic = [NSJSONSerialization JSONObjectWithData:dataJson options:NSJSONReadingMutableContainers error:nil] ;
    
}

-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"dataJson = %@",dic) ;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
