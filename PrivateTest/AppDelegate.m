//
//  AppDelegate.m
//  PrivateTest
//
//  Created by iosyf-02 on 2018/3/12.
//  Copyright © 2018年 情风. All rights reserved.
//

#import "AppDelegate.h"
#import "QFMediator.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor    = [UIColor whiteColor];
    UITabBarController *tabbarController = [[UITabBarController alloc] init];
    
    UINavigationController *homeNavi =
    [[QFMediator sharedInstance]performActionWithUrl:[NSURL URLWithString:@"http://A/Home?page=1&abc=123"] completion:nil returnValueBlock:nil];

    UINavigationController *meNavi = [[QFMediator sharedInstance]performActionWithUrl:[NSURL URLWithString:@"http://Me/Me?page=1&abc=321"] completion:nil returnValueBlock:nil];
    
    tabbarController.viewControllers = @[homeNavi,meNavi];
    
    self.window.rootViewController = tabbarController;
    [self.window makeKeyAndVisible];
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
