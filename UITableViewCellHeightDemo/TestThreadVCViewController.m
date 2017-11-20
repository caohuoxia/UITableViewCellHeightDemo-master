//
//  TestThreadVCViewController.m
//  UITableViewCellHeightDemo
//
//  Created by admin on 2017/11/17.
//  Copyright © 2017年 lisong. All rights reserved.
//

#import "TestThreadVCViewController.h"

@interface TestThreadVCViewController ()

@end

@implementation TestThreadVCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UILabel *alertLabel = [[UILabel alloc] initWithFrame:CGRectMake(100,100,100,100)];
    alertLabel.text = @"Wait 4 seconds...";
    [self.view addSubview:alertLabel];
    
    //队列和计时器用法注意事项
    NSOperationQueue *backgroundQueue = [[NSOperationQueue alloc] init];
    [backgroundQueue addOperationWithBlock:^{
        [NSThread sleepUntilDate:[NSDate dateWithTimeIntervalSinceNow:4]];
        //3.更新UI都的在主线程中操作，否则无效
        [[NSOperationQueue mainQueue] addOperationWithBlock:^{
            alertLabel.text = @"Ready to go!";
        }];
    }];
}

//那是自己的问题 看不得别人好

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
