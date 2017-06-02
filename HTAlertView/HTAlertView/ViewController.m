//
//  ViewController.m
//  HTAlertView
//
//  Created by MooMRiveR on 17/6/2.
//  Copyright © 2017年 GraceSoft. All rights reserved.
//

#import "ViewController.h"
#import "MyAlertView.h"
#define MYColorGreen [UIColor colorWithRed:60.0/255.0 green:179.0/255.0 blue:113.0/255.0 alpha:1]
#define MYColorRed [UIColor colorWithRed:220.0/255.0 green:20.0/255.0 blue:60.0/255.0 alpha:1]


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *btn1 = [[UIButton alloc]initWithFrame:CGRectMake(0, 100, 100, 40)];
    btn1.backgroundColor = [UIColor redColor];
    [btn1 addTarget:self action:@selector(sucess) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn1];
    
    UIButton *btn2 = [[UIButton alloc]initWithFrame:CGRectMake(CGRectGetMaxX(btn1.frame)+40, 100, 100, 40)];
    btn2.backgroundColor = [UIColor greenColor];
    [btn2 addTarget:self action:@selector(fail) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn2];
}
//根据不同状态显示不同的alertView
-(void)sucess{
    [MyAlertView alertTitle:@"发布成功" andBackgroundColor:MYColorGreen andTextColor:[UIColor whiteColor] toView:self.view];
}
-(void)fail{
    [MyAlertView alertTitle:@"发布失败" andBackgroundColor:MYColorRed andTextColor:[UIColor whiteColor] toView:self.view];
}
-(BOOL)prefersStatusBarHidden
{
    return YES;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
