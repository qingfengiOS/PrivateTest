
//
//  Target_Home.m
//  PrivateTest
//
//  Created by iosyf-02 on 2018/3/15.
//  Copyright © 2018年 情风. All rights reserved.
//

#import "Target_A.h"
#import "HomeViewController.h"
#import "DetailViewController.h"
@implementation Target_A

- (UIViewController *)Action_nativeFetchDetailViewController:(NSDictionary *)params
{
    // 因为action是从属于ModuleA的，所以action直接可以使用ModuleA里的所有声明
    DetailViewController *viewController = [[DetailViewController alloc] init];
    __block NSString *str = @"";
    [params enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        str = [str stringByAppendingString:obj];
    }];
    viewController.showStr = str;
    return viewController;
}

- (id)Action_Home:(NSDictionary *)param {
    UINavigationController *homeNavi = [[UINavigationController alloc]initWithRootViewController:[HomeViewController new]];
    homeNavi.tabBarItem.title = @"首页";
    return homeNavi;
}

@end
