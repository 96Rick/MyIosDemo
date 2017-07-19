//
//  ViewController.m
//  20-ios-NSThread
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
    
    for (int i = 0; i < 3; i++) {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect] ;
        btn.frame = CGRectMake(100, 100+80*i, 80, 40) ;
        
        [btn addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchUpInside] ;
        btn.tag = 100+i;
        
        if(i == 0)
        {
            [btn setTitle:@"启动线程" forState:UIControlStateNormal];
        }
        else if (i == 1)
        {
            [btn setTitle:@"启动线程01" forState:UIControlStateNormal];
        }
        else if (i == 2)
        {
            [btn setTitle:@"启动线程02" forState:UIControlStateNormal] ;
            
        }
        
        [self.view addSubview:btn] ;
    }
}

-(void) pressBtn:(UIButton*) btn
{
    //启动线程一
    if (btn.tag == 100)
    {
        NSLog(@"按钮1按下！");
        
        //创建一个线程对象
        //p1：线程对象的拥有者
        //p2:线程处理函数
        //p3:线程参数
        NSThread *newT = [[NSThread alloc]initWithTarget:self selector:@selector(actNew:) object:nil] ;
       
        //启动并运行线程
        [newT start] ;
        
    }
    else if (btn.tag == 101)
    {
        NSLog(@"按钮2按下！") ;
        
        //创建并启动新线程
        [NSThread detachNewThreadSelector:@selector(actT1) toTarget:self withObject:nil] ;
        
        
    }
    else if (btn.tag == 102)
    {
        NSLog(@"按钮3按下！") ;
        
        _thread02 = [[ NSThread alloc] initWithTarget:self selector:@selector(actT2) object:nil] ;
        
        [_thread02 start];
    }
}

//p1：线程对象
-(void) actNew:(NSThread*) thread
{
    int i = 0 ;
    while (true)
    {
        NSLog(@"i = %d",i);
        i++;
    }
}

-(void) actT1
{
    int i = 0;
    while (true)
    {
        //NSLog(@"T1 act !") ;
        i++ ;
        if (i>=10001)
        {
            break ;
        }
        //加锁，确保加法操作安全性
        [_lock lock] ;
        _counter++ ;
        [_lock unlock] ;
        NSLog(@"c1 = %ld", _counter) ;
    }
    
    NSLog(@"c1finale = %ld" , _counter) ;
    
}

-(void) actT2
{
    int i = 0;
    while (true)
    {
        //NSLog(@"T1 act !") ;
        i++ ;
        if (i>=10001)
        {
            break ;
        }
        [_lock lock] ;
        _counter++ ;
        [_lock unlock] ;
        NSLog(@"c2 = %ld", _counter) ;
    }
    NSLog(@"c2 finale = %ld" , _counter) ;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
