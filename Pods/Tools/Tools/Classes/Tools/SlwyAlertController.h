//
//  SlwyAlertController.h
//  shanglv51
//
//  Created by iosyf on 16/12/15.
//  Copyright © 2016年 shanglv. All rights reserved.
//
typedef void(^completion)(void);
#import <Foundation/Foundation.h>

@interface SlwyAlertController : NSObject
+ (void)showTipsToOrderUserCar:(NSString *)message action:(completion)sureCompletion cancel:(completion)cancelCompletion;
+ (void)showTips:(NSString *)message action:(completion)sureCompletion;

/**
 *  call 电话
 */
+ (void)alertControllerWithCallPhone:(NSString *)phoneNumber;
/**
 *  提示弹框 一个确定按钮
 *  提示弹框 提示文字
 */
+ (void)alertControllerWithTitle:(NSString *)title actionWithTitle:(NSString *)actionWithTitle completionSure:(completion)completionSure;
/**
 *  提示弹框 一个确定按钮
 *  提示弹框 提示按钮文字
 */

+ (void)alertControllerWithTitle:(NSString *)title subTitle:(NSString *)subTitle actionWithTitle:(NSString *)actionWithTitle completionSure:(completion)completionSure;

/**
 *  alert提示框 自带 确定按钮 取消按钮 并回调方法
 *
 */
+ (void)alertWithControllerTitle:(NSString *)title subTitle:(NSString *)subTitle sureTitle:(NSString *)sureTitle cancelTitle:(NSString *)cancelTitle sureCompletion:(completion)sureCompletion cancelCompletion:(completion)cancelCompletion;
/**
 账号在别处登录
 */
+ (void)alertControllerOutLogin;
@end
