//
//  SlwyNetworkTool.m
//  shanglv51
//
//  Created by iosyf-02 on 17/3/20.
//  Copyright © 2017年 shanglv. All rights reserved.
//

#import "SlwyNetworkTool.h"
#import "SlwyAlertController.h"
#import "AFNetworking.h"

@implementation SlwyNetworkTool

static AFHTTPSessionManager *_manager;

/**
 AFHTTPSession单例

 @return AFHTTPSessionManager单例
 */
+ (AFHTTPSessionManager *)manager {

    static dispatch_once_t onceToken;

    dispatch_once(&onceToken, ^{
        _manager = [AFHTTPSessionManager manager];
    });

    return _manager;

}

/**
 网络请求方法

 @param apiName API名称
 @param requestUrl 请求路径
 @param requestMethod 请求方法 （1为GET 2为POST 3DELETE）
 @param parameters 请求参数 (字典)
 @param success 成功block
 @param failure 失败block
 @param timeoutInterval 超时时间
 */
+ (void)httpRequestWithAPI:(NSString *)apiName requestUrl:(NSString *)requestUrl requestMethod:(NSInteger)requestMethod parameters:(id)parameters success:(successBlock)success failure:(void(^)(NSError *error))failure timeout:(NSTimeInterval)timeoutInterval {

    AFHTTPSessionManager *manager = [self manager];
    manager.requestSerializer  = [AFJSONRequestSerializer serializer];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    [manager.requestSerializer setValue:[[NSUserDefaults standardUserDefaults]objectForKey:@"Token"]        forHTTPHeaderField:@"Token"];
    [manager.requestSerializer setValue:[[NSUserDefaults standardUserDefaults]objectForKey:@"loginAccount"] forHTTPHeaderField:@"UserName"];//成功

    //用车版本新增认证
//    [manager.requestSerializer setValue:[[NSUserDefaults standardUserDefaults]objectForKey:@"Authorization"] forHTTPHeaderField:@"Authorization"];
//    [manager.requestSerializer setValue:@"1.0" forHTTPHeaderField:@"api-version"];

    manager.requestSerializer.timeoutInterval = timeoutInterval;

    NSString *lastRequestUrl = [NSString stringWithFormat:@"%@%@",apiName,requestUrl];

    if (requestMethod == 1) {//GET请求
        [manager GET:lastRequestUrl parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            if (success) {
                success(responseObject);
            }
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            if (failure) {
                NSRange range = [error.localizedDescription rangeOfString:@"666"];
                if (range.length) {//退出登录
                    [SlwyAlertController alertControllerOutLogin];
                }
                failure(error);
            }
        }];
    } else if (requestMethod == 2) {//POST请求
        [manager POST:lastRequestUrl parameters:parameters progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            if (success) {
                success(responseObject);
            }
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            if (failure) {
                NSRange range = [error.localizedDescription rangeOfString:@"666"];
                if (range.length) {//退出登录
                    [SlwyAlertController alertControllerOutLogin];
                }
                failure(error);
            }
        }];
    } else {
        [manager DELETE:lastRequestUrl parameters:parameters success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            if (success) {
                success(responseObject);
            }
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            if (failure) {
                NSRange range = [error.localizedDescription rangeOfString:@"666"];
                if (range.length) {//退出登录
                    [SlwyAlertController alertControllerOutLogin];
                }
                failure(error);
            }
        }];
    }
}

@end


