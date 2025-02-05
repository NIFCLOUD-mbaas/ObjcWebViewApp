//
//  WebViewController.m
//  ObjcWebViewApp
//
//  Created by FJCT on 2016/11/10.
//  Copyright 2020 FUJITSU CLOUD TECHNOLOGIES LIMITED All Rights Reserved.
//

#import "WebViewController.h"

@interface WebViewController ()

@end

// index.htmlの公開URL
NSString *const Url = @"YOUR_HTML_PUBLIC_URL";

@implementation WebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    WKWebView *webView = [[WKWebView alloc] initWithFrame:[[self view] bounds]];
    [self.view addSubview:webView];
    
    // webViewに表示する
    NSURL *nsurl = [NSURL URLWithString:Url];
    NSURLRequest *request = [NSURLRequest requestWithURL:nsurl];
    [webView loadRequest:request];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
