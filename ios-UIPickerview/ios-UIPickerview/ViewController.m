//
//  ViewController.m
//  ios-UIPickerview
//
//  Created by Rick on 2017/6/21.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIPickerView *pickerView = [[UIPickerView alloc]initWithFrame:CGRectMake(10, 100, 300, 200)];
    
    pickerView.delegate = self ;   //需要在.h文件中添加两个协议
    
    pickerView.dataSource = self;   //需要在.h文件中添加两个协议
    
    [self.view addSubview:pickerView];
    
}

//实现获取组数的协议函数
//返回值为选择视图的组数
//整数类型
-(NSInteger) numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 3;
}

//实现每组元素的个数
//每组元素有多少行
//P1:调用此协议的选择视图本身
//p2:第几组的元素个数
-(NSInteger) pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    
    if (component == 0) {
        return 200;
    }
    else if (component == 1)
    {
        return 12;
    }
    else
    {
        return 31;
    }
}

//显示每个元素的内容
//p1：调用次协议的是图本身
//P2:行数
//p3:组数
-(NSString*) pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    
    if (component == 0) {
        
        row =  1899;
        
        NSString *str = [NSString stringWithFormat:@"%ld年",row+1];
        
        return str;
    }
    
    else if (component == 1) {
        
        
        
        NSString *str = [NSString stringWithFormat:@"%ld月",row+1];
        
        return str;
    }
    else
    {
        
        
        NSString *str = [NSString stringWithFormat:@"%ld日",row+1];
        
        return str;
    }
    
}

//设置每一行的高度
-(CGFloat) pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component
{
    return 80 ;
}


//可以讲自定义的视图显示到pickerview上
-(UIView*) pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view
{
    UIImage* image = [UIImage imageNamed:[NSString stringWithFormat:@"%ld.png",row % 4 + 1]];
 
    UIImageView *iView = [[UIImageView alloc]initWithImage:image];
    
    iView.frame = CGRectMake(0, 0, 60, 60);
    
    return iView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
