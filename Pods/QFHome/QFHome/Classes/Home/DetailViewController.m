//
//  DetailViewController.m
//  PrivateTest
//
//  Created by iosyf-02 on 2018/3/13.
//  Copyright © 2018年 情风. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
    
    UILabel *showLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 100, 60)];
    showLabel.text = self.showStr;
    showLabel.center = self.view.center;
    showLabel.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:showLabel];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
