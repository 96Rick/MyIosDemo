//
//  ViewController.m
//  21-ios-NSOperation
//
//  Created by Rick on 2017/7/17.
//  Copyright © 2017年 Rick. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    for (int i = 0; i < 2; i++) {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect] ;
        btn.frame = CGRectMake(100, 100+i*80, 80, 40) ;
        [btn addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchUpInside ] ;
        btn.tag = 100+i ;
        if (i == 0)
        {
            [btn setTitle:@"添加新任务1到队列中" forState:UIControlStateNormal] ;
        }
        else if (i == 1)
        {
            [btn setTitle:@"添加新任务2到队列中" forState:UIControlStateNormal] ;
        }
        [self.view addSubview:btn];
    }
    //创建一个任务队列
    _queue = [[NSOperationQueue alloc]init ];
    [_queue setMaxConcurrentOperationCount:5] ;
    
}

-(void) pressBTn:(UIButton*) btn
{
    if (btn.tag == 101)
    {
        //方法一：
        //创建一个执行任务
        //p3：任意参数
    //    NSInvocationOperation * iop = [[NSInvocationOperation alloc] initWithTarget:self selector:@selector(optACT01:) object:@"OPT01" ] ;
        
      //  [_queue addOperation:iop ];
        
        
        //方法二：
        NSInvocation *invo = [[NSInvocation alloc]init];
        invo.target = self ;
        invo.selector = @selector(optACT01:) ;
        NSInvocationOperation *iop02 = [[NSInvocationOperation alloc]initWithInvocation:invo];
        [_queue addOperation:iop02];
    }
    
    else if (btn.tag == 102)
    {
        //使用block 语法块来进行任务处理
        [_queue addOperationWithBlock:^{
            while (true)
            {
                NSLog(@"block opt!") ;
            }
        }] ;
    }
}

-(void) optACT01:(NSInvocationOperation*)opt
{
    while (true) {
        NSLog(@"opt 01!");
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
