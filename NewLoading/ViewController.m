//
//  ViewController.m
//  NewLoading
//
//  Created by lakala on 15/7/22.
//  Copyright (c) 2015年 lakala. All rights reserved.
//

#import "ViewController.h"
#import "LKLNewLoadingView.h"
@interface ViewController ()
{

    LKLNewLoadingView *newLoading;
    
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    newLoading = [[LKLNewLoadingView alloc] initWithFrame:CGRectMake(100, 200, 50, 50)];
    [self.view addSubview:newLoading];
}
@end
