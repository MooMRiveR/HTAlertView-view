//
//  MyAlertView.m
//  HTAlertView
//
//  Created by MooMRiveR on 17/6/2.
//  Copyright © 2017年 GraceSoft. All rights reserved.
//

#import "MyAlertView.h"

@implementation MyAlertView
+(void)alertTitle:(NSString *)str andBackgroundColor:(UIColor *)backgroundColor andTextColor:(UIColor *)textColor toView:(UIView *)view{
    UILabel *alertLabel = [[UILabel alloc]init];
    alertLabel.center = CGPointMake(view.center.x, -14);
    alertLabel.bounds = CGRectMake(0, -28, view.frame.size.width, 28);
    alertLabel.backgroundColor = [backgroundColor colorWithAlphaComponent:0.8];
    alertLabel.textAlignment = NSTextAlignmentCenter;
    alertLabel.font = [UIFont systemFontOfSize:14];
    alertLabel.text = str;
    alertLabel.textColor = textColor;
    alertLabel.layer.cornerRadius = 3;
    alertLabel.layer.masksToBounds = YES;
    [view addSubview:alertLabel];
    alertLabel.alpha = 0;
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.4];
    alertLabel.alpha = 1;
    alertLabel.center = CGPointMake(view.center.x, 14);
    alertLabel.bounds = CGRectMake(0, 0, view.frame.size.width, 28);
    [UIView commitAnimations];
    [UIView animateWithDuration:0.3 delay:3 options:UIViewAnimationOptionCurveEaseIn animations:^{
        alertLabel.alpha = 0;
        alertLabel.center = CGPointMake(view.center.x, -14);
        alertLabel.bounds = CGRectMake(0, -28, view.frame.size.width, 28);
    } completion:^(BOOL finished){
        [alertLabel removeFromSuperview];
    }];
}
@end
