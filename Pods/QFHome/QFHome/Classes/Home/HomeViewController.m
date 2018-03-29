//
//  HomeViewController.m
//  PrivateTest
//
//  Created by iosyf-02 on 2018/3/12.
//  Copyright © 2018年 情风. All rights reserved.
//

#import "HomeViewController.h"
#import "QFMediator.h"
@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor redColor];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 300, 100, 50);
    [self.view addSubview:btn];
    [btn setTitle:@"jump" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(pushAction) forControlEvents:UIControlEventTouchUpInside];
}

- (void)pushAction {
    
    UIViewController *VC = [[QFMediator sharedInstance]performTarget:@"A" action:@"nativeFetchDetailViewController" paramter:@{@"page":@"1",@"name":@"qingfeng"} shouldCacheTarget:YES];
    [self.navigationController pushViewController:VC animated:YES];
}


@end
