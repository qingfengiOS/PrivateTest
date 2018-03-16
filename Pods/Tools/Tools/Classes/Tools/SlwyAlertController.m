//
//  SlwyAlertController.m
//  shanglv51
//
//  Created by iosyf on 16/12/15.
//  Copyright © 2016年 shanglv. All rights reserved.
//

#import "SlwyAlertController.h"

@implementation SlwyAlertController


+ (void)showTipsToOrderUserCar:(NSString *)message action:(completion)sureCompletion cancel:(completion)cancelCompletion
{
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:nil message:message preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *sure = [UIAlertAction actionWithTitle:@"确认" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        if (sureCompletion) {
            sureCompletion();
        }
    }];
    UIAlertAction *cancel =[UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        if (cancelCompletion) {
            cancelCompletion();
        }
    }];
    [alert addAction:sure];
    [alert addAction:cancel];
    [[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:alert animated:YES completion:nil];
}
/**
 *  alert提示框 自带 提示信息 单个确定按钮
 *
 *  @return 无
 */
+ (void)showTips:(NSString *)message action:(completion)sureCompletion
{
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"温馨提示" message:message preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *sure = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        if (sureCompletion) {
            sureCompletion();
        }
    }];
    [alert addAction:sure];
    [[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:alert animated:YES completion:nil];
}

/**
 *  call 电话
 */
+ (void)alertControllerWithCallPhone:(NSString *)phoneNumber
{
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 10.0 ) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"telprompt://%@",phoneNumber]] options:@{} completionHandler:nil];
    }else{
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"telprompt://%@",phoneNumber]]];
    }
}

/**
 *  提示弹框 一个确定按钮
 *  提示弹框 提示按钮文字
 */

+ (void)alertControllerWithTitle:(NSString *)title actionWithTitle:(NSString *)actionWithTitle completionSure:(completion)completionSure
{
    UIAlertController *controller = [UIAlertController alertControllerWithTitle:nil message:title preferredStyle:UIAlertControllerStyleAlert];
    
    [controller addAction:[UIAlertAction actionWithTitle:actionWithTitle style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        if (completionSure) {
            completionSure();
        }
    }]];
    
    [[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:controller animated:YES completion:nil];
}

/**
 *  提示弹框 一个确定按钮
 *  提示弹框 提示按钮文字
 */

+ (void)alertControllerWithTitle:(NSString *)title subTitle:(NSString *)subTitle actionWithTitle:(NSString *)actionWithTitle completionSure:(completion)completionSure
{
    UIAlertController *controller = [UIAlertController alertControllerWithTitle:title message:subTitle preferredStyle:UIAlertControllerStyleAlert];
    
    [controller addAction:[UIAlertAction actionWithTitle:actionWithTitle style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        if (completionSure) {
            completionSure();
        }
    }]];
    
    [[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:controller animated:YES completion:nil];
}

/**
 *  alert提示框 自带 确定按钮 取消按钮 并回调方法
 *
 *  @return 无
 */
+ (void)alertWithControllerTitle:(NSString *)title subTitle:(NSString *)subTitle sureTitle:(NSString *)sureTitle cancelTitle:(NSString *)cancelTitle sureCompletion:(completion)sureCompletion cancelCompletion:(completion)cancelCompletion
{
    UIAlertController *controller = [UIAlertController alertControllerWithTitle:title message:subTitle preferredStyle:UIAlertControllerStyleAlert];
    
    [controller addAction:[UIAlertAction actionWithTitle:cancelTitle style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        if (cancelCompletion) {
            cancelCompletion();
        }
    }]];
    
    [controller addAction:[UIAlertAction actionWithTitle:sureTitle style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        if (sureCompletion) {
            sureCompletion();
        }
    }]];
    
    [[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:controller animated:YES completion:nil];
}

/**
 账号在别处登录
 */
+ (void)alertControllerOutLogin
{
    UIAlertController *controller = [UIAlertController alertControllerWithTitle:@"温馨提示" message:@"您的账号已经在别处登录,请重新登录" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *sureAction = [UIAlertAction actionWithTitle:@"重新登录" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        NSLog(@"被挤了");
    }];
    [controller addAction:sureAction];
    [[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:controller animated:YES completion:nil];
}

@end
