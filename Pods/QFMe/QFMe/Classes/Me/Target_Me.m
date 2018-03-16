//
//  Target_Me.m
//  AFNetworking
//
//  Created by iosyf-02 on 2018/3/15.
//

#import "Target_Me.h"
#import "MeViewController.h"
@implementation Target_Me

- (id)Action_Me:(NSDictionary *)param {
    UINavigationController *homeNavi = [[UINavigationController alloc]initWithRootViewController:[MeViewController new]];
    homeNavi.tabBarItem.title = @"我的";
    return homeNavi;
}

@end
