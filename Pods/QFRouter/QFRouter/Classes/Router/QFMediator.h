//
//  QFMediator.h
//  PrivateTest
//
//  Created by iosyf-02 on 2018/3/15.
//  Copyright © 2018年 情风. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^returnValueBlock)(NSDictionary *dic);

@protocol QFMediatorDelegate <NSObject>

- (void)returnValue:(NSDictionary *)dic;

@end

@interface QFMediator : NSObject

@property (nonatomic, copy) returnValueBlock valueBlock;

/**
 创建单例路由
 
 @return 单例路由实例
 */
+ (instancetype)sharedInstance;


/**
 远程调用
 
 @param url 远程url
 @param completion 回调
 */
- (id)performActionWithUrl:(NSURL *)url completion:(void (^)(NSDictionary *info))completion returnValueBlock:(returnValueBlock)valueBlock;


/**
 内部组件掉用
 
 @param targetName 目标
 @param actionName 实际任务
 @param paramter 参数
 @param shouldCacheTarget 是否缓存
 */
- (id)performTarget:(NSString *)targetName action:(NSString *)actionName paramter:(NSDictionary *)paramter shouldCacheTarget:(BOOL)shouldCacheTarget;


/**
 清缓存
 
 @param targetName 目标
 */
- (void)releaseCachedTargetWithTargetName:(NSString *)targetName;


/**
 路由回调参数
 
 @param dic 参数字典
 */
- (void)testBlocks:(NSDictionary *)dic;

@end
