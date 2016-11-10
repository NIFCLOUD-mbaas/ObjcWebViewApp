//
//  WebViewController.m
//  ObjcWebViewApp
//
//  Created by Nifty on 2016/11/10.
//  Copyright © 2016年 Nifty. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()
// WebView
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

// index.htmlの公開URL
NSString *const Url = @"YOUR_HTML_PUBLIC_URL";

@implementation WebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // スクロールを有効にする
    CGPoint point = self.webView.scrollView.contentOffset;
    point.y = 0;
    self.webView.scrollView.contentOffset = point;
    self.webView.scrollView.scrollEnabled = YES;
    
    // webViewに表示する
    NSURL *nsurl = [NSURL URLWithString:Url];
    NSURLRequest *request = [NSURLRequest requestWithURL:nsurl];
    [self.webView loadRequest:request];
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
