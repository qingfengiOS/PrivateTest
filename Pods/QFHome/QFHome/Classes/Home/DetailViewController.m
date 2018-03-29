//
//  DetailViewController.m
//  PrivateTest
//
//  Created by iosyf-02 on 2018/3/13.
//  Copyright © 2018年 情风. All rights reserved.
//

#import "DetailViewController.h"
#import "QFMediator.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc]initWithTitle:@"back" style:UIBarButtonItemStylePlain target:self action:@selector(back)];
    self.navigationItem.leftBarButtonItem = leftItem;
    UILabel *showLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 100, 60)];
    showLabel.text = self.showStr;
    showLabel.center = self.view.center;
    showLabel.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:showLabel];
}

- (void)dealloc {
    NSLog(@"dealloc resumed");
}

- (void)back {

    [self.navigationController popViewControllerAnimated:YES];
    [[QFMediator sharedInstance] testBlocks:@{@"key":@"block return value"}];//block传值
}

@end
