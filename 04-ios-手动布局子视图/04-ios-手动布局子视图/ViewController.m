#import "ViewController.h"
#import "SuperView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    SuperView *sView = [[SuperView alloc]initWithFrame:CGRectMake(20, 20, 180, 280)];
    [sView createSubview];
    
    sView.backgroundColor = [UIColor blueColor];
    
    [self.view addSubview:sView];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(240, 480, 80, 40);
    
    [btn setTitle:@"放大" forState:UIControlStateNormal];
    
    [btn addTarget:self action:@selector(pressLarge) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    UIButton *btn01 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    btn01.frame = CGRectMake(240, 520, 80, 40);
    
    [btn01 setTitle:@"缩小" forState:UIControlStateNormal];
    
    [btn01 addTarget:self action:@selector(pressSmall) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn01];
    
    sView.tag = 101;
    
}

-(void) pressLarge
{
    SuperView *sView = (SuperView*)[self.view viewWithTag:101];
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.5];
    sView.frame = CGRectMake(20, 20, 250, 480) ;
    [UIView commitAnimations];
    
    
}

-(void) pressSmall
{
    SuperView *sView = (SuperView*)[self.view viewWithTag:101];
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.5];
    sView.frame = CGRectMake(20,20, 180, 280) ;
    [UIView commitAnimations];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
