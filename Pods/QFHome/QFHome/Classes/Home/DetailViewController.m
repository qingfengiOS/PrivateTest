//
//  DetailViewController.m
//  PrivateTest
//
//  Created by iosyf-02 on 2018/3/13.
//  Copyright © 2018年 情风. All rights reserved.
//

#import "DetailViewController.h"
#import "QFMediator.h"
#import "NextViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc]initWithTitle:@"back" style:UIBarButtonItemStylePlain target:self action:@selector(back)];
    self.navigationItem.leftBarButtonItem = leftItem;
    UIButton *showButton = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 100, 60)];
    [showButton setTitle:self.showStr forState:UIControlStateNormal];
    showButton.center = self.view.center;
    showButton.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:showButton];
    [showButton addTarget:self action:@selector(showButtonAction) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)showButtonAction {
    NextViewController *VC = [[NextViewController alloc]init];
    [self.navigationController pushViewController:VC animated:YES];
}

- (void)dealloc {
    NSLog(@"dealloc resumed");
}

- (void)back {
    
    [self.navigationController popViewControllerAnimated:YES];
    [[QFMediator sharedInstance] testBlocks:@{@"key":@"block return value"}];//block传值
}

@end
