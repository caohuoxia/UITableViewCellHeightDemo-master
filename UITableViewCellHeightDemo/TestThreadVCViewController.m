//
//  TestThreadVCViewController.m
//  UITableViewCellHeightDemo
//
//  Created by admin on 2017/11/17.
//  Copyright © 2017年 lisong. All rights reserved.
//

#import "TestThreadVCViewController.h"
#import "LoginView.h"

@interface TestThreadVCViewController ()<UIWebViewDelegate>
{
    UIWebView *webView;
    LoginView *aaView;
}
@end

@implementation TestThreadVCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor clearColor];
    
    UILabel *alertLabel = [[UILabel alloc] initWithFrame:CGRectMake(100,100,100,100)];
    alertLabel.text = @"Wait 4 seconds...";
    [self.view addSubview:alertLabel];

    __block NSInteger count = 10;
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:1.0 repeats:YES block:^(NSTimer * _Nonnull timer) {
        if (count >=0) {
            alertLabel.text = [NSString stringWithFormat:@"%ld",(long)count--];
        }else{
            alertLabel.text = @"Ready to go!";
        }
        
    }];
    [[NSRunLoop currentRunLoop] addTimer:timer forMode:NSRunLoopCommonModes];
    
//    //队列和计时器用法注意事项
//    NSOperationQueue *backgroundQueue = [[NSOperationQueue alloc] init];
//    [backgroundQueue addOperationWithBlock:^{
//        [NSThread sleepUntilDate:[NSDate dateWithTimeIntervalSinceNow:4]];
//        //3.更新UI都的在主线程中操作，否则无效
//        [[NSOperationQueue mainQueue] addOperationWithBlock:^{
//            alertLabel.text = @"Ready to go!";
//        }];
//    }];
    
    
    
//#pragma mark-  使用uiwebview加载gif
//     /*
//    NSData *data = [NSData dataWithContentsOfFile:path];
//    使用loadData:MIMEType:textEncodingName: 则有警告
//    [webView loadData:data MIMEType:@"image/gif" textEncodingName:nil baseURL:nil];
//    */
//    webView = [[UIWebView alloc] initWithFrame:CGRectZero];
//    webView.delegate = self;
//    NSString *path = [[NSBundle mainBundle] pathForResource:@"earth1" ofType:@"gif"];
//    NSURL *url = [NSURL URLWithString:path];
//    [webView loadRequest:[NSURLRequest requestWithURL:url]];
//    [self.view addSubview:webView];
//
//    //加载xib
//    aaView = [LoginView loadLoginView];
//    aaView.backgroundColor = [UIColor clearColor];
//    [aaView setFrame:self.view.bounds];
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    [webView setFrame:self.view.bounds];
    
    //自定义view需webview加载完再add。若在viewdidload里面，则会出现背景白屏几秒之后再到正常的问题
    [self.view addSubview:aaView];
}

- (void)clickbtn{
    NSLog(@"button clicked");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
