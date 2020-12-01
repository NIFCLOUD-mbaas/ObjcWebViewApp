//
//  WebViewController.m
//  ObjcWebViewApp
//
//  Created by FJCT on 2016/11/10.
//  Copyright 2020 FUJITSU CLOUD TECHNOLOGIES LIMITED All Rights Reserved.
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

@end
