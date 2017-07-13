//
//  ViewController.m
//  11-ios-NSUserDefaults
//
//  Created by Rick on 2017/6/30.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //创建圆角按钮
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(100, 100, 80, 40);
    [btn setTitle:@"写入文件" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(pressWrite) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
    
    
    UIButton *btnRead = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btnRead.frame =CGRectMake(100, 200, 80, 40);
    [btnRead setTitle:@"读出文件" forState:UIControlStateNormal];
    [btnRead addTarget:self action:@selector(pressRead) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btnRead];
    
    
}

-(void)pressWrite
{
    //定义一个用户数据对象
    //一般用来存储临时数据，它不需要用alloc 创建，用户默认数据对象是单例模式
    //standerUserDefas：获取全局为一的实例对象
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults] ;
    
    //存储字符串对象，可以将对象存储到内部文件中
    //P1：要存储的对象 id
    //P2: 要存储的对象的名字 nsstring
    [ud setObject:@"Michael" forKey:@"NAME"] ;
    
    NSNumber *num = [NSNumber numberWithInt:100];
    
    //Objuct 只能存储能够文件化得对象
    [ud setObject:num forKey:@"NUM"];
    
    [ud setInteger:123 forKey:@"INT"] ;
    
    [ud setBool:YES forKey:@"BOOL"];
    
    NSArray *array = [NSArray arrayWithObjects:@"11",@"12",@"33",nil];
    
    [ud setObject:array forKey:@"ARRAY"];
    
    
}

-(void)pressRead
{
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    id object = [ud objectForKey:@"NAME"];
    NSString *name = (NSString*) object;
    NSLog(@"name = %@",name);
    
    object = [ud objectForKey:@"NUM"];
    NSNumber *num = (NSNumber*) object;
    NSLog(@"num = %@",num);
    
    NSInteger iv = [ud integerForKey:@"INT"];
    NSLog(@"int = %ld",iv);
    
    BOOL bv = [ud boolForKey:@"BOOL"];
    NSLog(@"BOOL = %d",bv);
    
    NSArray *array = [ud objectForKey:@"ARRAY"];
    NSLog(@"array = %@",array);
    
    [ud removeObjectForKey:@"ARRAY"];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
