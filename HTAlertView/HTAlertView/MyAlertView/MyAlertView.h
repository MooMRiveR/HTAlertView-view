//
//  MyAlertView.h
//  HTAlertView
//
//  Created by MooMRiveR on 17/6/2.
//  Copyright © 2017年 GraceSoft. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface MyAlertView : NSObject

+(void)alertTitle:(NSString *)str andBackgroundColor:(UIColor *)backgroundColor andTextColor:(UIColor *)textColor toView:(UIView *)view;
    
@end
