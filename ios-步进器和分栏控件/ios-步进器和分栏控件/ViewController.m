//
//  ViewController.m
//  ios-步进器和分栏控件
//
//  Created by Rick on 2017/5/15.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize stepper = _stepper;
@synthesize segControl = _segControl;


- (void)viewDidLoad {
    [super viewDidLoad];
    
    _stepper = [[UIStepper alloc]initWithFrame:CGRectMake(100, 100, 80, 40)];
    
    _stepper.minimumValue = 0;
    
    _stepper.maximumValue = 100;
    
    //设定步进器的当前值，default为0
    _stepper.value = 0;
    
    //步进器每次向前后的步伐值
    _stepper.stepValue = 10;
    
    //是否可以重复相应事件 按住持续增加
    _stepper.autorepeat = YES;
    
    //是否将步进结果通过事件函数响应
    _stepper.continuous = YES;
    
    [_stepper addTarget:self action:@selector(stepChange) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:_stepper];
    
    
    _segControl = [[UISegmentedControl alloc]initWithFrame:CGRectMake(10, 200, 300, 40)];
    
    [_segControl insertSegmentWithTitle:@"0元" atIndex:0 animated:YES];
    
    [_segControl insertSegmentWithTitle:@"5元" atIndex:1 animated:NO];
    
    [_segControl insertSegmentWithTitle:@"10元" atIndex:2 animated:NO];
    
    _segControl.selectedSegmentIndex = 0;
    
    [_segControl addTarget:self action:@selector(segChange) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:_segControl];
    
    
    
    
}

- (void) stepChange
{
    
    NSLog(@"step press! value = %f", _stepper.value);
}

- (void) segChange
{
    NSLog(@"%ld",_segControl.selectedSegmentIndex);
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
