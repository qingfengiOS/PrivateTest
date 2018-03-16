//
//  MeViewController.m
//  PrivateTest
//
//  Created by iosyf-02 on 2018/3/12.
//  Copyright © 2018年 情风. All rights reserved.
//

#import "MeViewController.h"
#import "UIImageView+WebCache.h"
#import "QFMediator.h"

@interface MeViewController ()

@end

@implementation MeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor yellowColor];
    
    UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    [self.view addSubview:imageView];
    [imageView sd_setImageWithURL:[NSURL URLWithString:@"https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1665207864,746409922&fm=27&gp=0.jpg"]];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 300, 100, 50);
    btn.backgroundColor = [UIColor greenColor];
    [self.view addSubview:btn];
    [btn setTitle:@"jump" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(pushAction) forControlEvents:UIControlEventTouchUpInside];
}

- (void)pushAction {
    UIViewController *VC = [[QFMediator sharedInstance]performActionWithUrl:[NSURL URLWithString:@"http://A/nativeFetchDetailViewController?page=1&abc=123"] completion:nil];
    [self.navigationController pushViewController:VC animated:YES];
}



@end

