//
//  NextViewController.m
//  AFNetworking
//
//  Created by iosyf-02 on 2018/7/9.
//

#import "NextViewController.h"
#import "QFMediator.h"

@interface NextViewController ()

@end

@implementation NextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc]initWithTitle:@"back" style:UIBarButtonItemStylePlain target:self action:@selector(back)];
    self.navigationItem.leftBarButtonItem = leftItem;
    
}

- (void)back {
    
    [self.navigationController popToViewController:self.navigationController.viewControllers[0] animated:YES];
    [[QFMediator sharedInstance] testBlocks:@{@"key":@"next block return value"}];//block传值
    
}

- (void)dealloc {
    NSLog(@"%@ dealloc resumed",NSStringFromClass([self class]));
}


@end
