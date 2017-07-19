//
//  ViewController.m
//  19-ios-NSURLConnection
//
//  Created by Rick on 2017/7/16.
//  Copyright © 2017年 Rick. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect] ;
    btn.frame = CGRectMake(100, 100, 80, 40) ;
    [btn setTitle:@"连接Data" forState:UIControlStateNormal] ;
    
    [btn addTarget:self action:@selector(pressBtn) forControlEvents:UIControlEventTouchUpInside] ;
    
    [self.view addSubview:btn] ;
    
}

-(void) pressBtn
{
    NSLog(@"press btn") ;
    
    NSString *strURL = @"http://www.baidu.com" ;
    //将字符串转换成url对象
    NSURL *url = [NSURL URLWithString:strURL] ;
    //定义一个请求对象,在链接之前的信息的封装
    NSURLRequest *request = [NSURLRequest requestWithURL:url] ;
    
    //创建一个网络链接对象，
    //p1:链接的请求对象
    //p2：代理对象，用来实现回传数据的代理协议
    _connect = [NSURLConnection connectionWithRequest:request delegate:self] ;
    
    _data = [[NSMutableData alloc]init] ;
    
}

//错误处理信息的代理协议
-(void) connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
    NSLog(@"ERROR = %@",error) ;
}

//处理服务器返回的响应码
-(void) connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response
{
    //将响应码转化成http响应码
    NSHTTPURLResponse *res = (NSHTTPURLResponse*) response ;
    
    if (res.statusCode == 200)
    {
        NSLog(@"链接成功，服务器正常！") ;
    }
    else if (res.statusCode == 404)
    {
        NSLog(@"服务器正常开启，没有找到链接地址的页面或数据!") ;
    }
    else if(res.statusCode == 500)
    {
        NSLog(@"服务器宕机或关机!") ;
    }
}

//接受服务器回传的数据时
-(void) connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    //将每次回传的数据链接起来
    [_data appendData:data];
}

-(void) connectionDidFinishLoading:(NSURLConnection *)connection
{
    //将二进制数据转化为字符串数据
    NSString *str = [[NSString alloc]initWithData:_data encoding:NSUTF8StringEncoding] ;
    
    NSLog(@"百度 page = %@",str) ;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
