//
//  SlwyNetworkTool.h
//  shanglv51
//
//  Created by iosyf-02 on 17/3/20.
//  Copyright © 2017年 shanglv. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef void(^successBlock)(id responseObject);

@interface SlwyNetworkTool : NSObject



/**
 *  网络请求方法
 *
 *  @param apiName         API名称
 *  @requestUrl            请求路径
 *  @param requestMethod   请求方法 （1为GET 2为POST）
 *  @param parameters      请求参数 (字典)
 *  @param success         成功block
 *  @param failure         失败block
 *  @param timeoutInterval 超时时间
 */
+ (void)httpRequestWithAPI:(NSString *)apiName requestUrl:(NSString *)requestUrl requestMethod:(NSInteger)requestMethod parameters:(id)parameters success:(successBlock)success failure:(void(^)(NSError *error))failure timeout:(NSTimeInterval)timeoutInterval;

@end


