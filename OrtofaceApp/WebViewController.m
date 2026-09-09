//
//  WebViewController.m
//  iCologic
//
//  Created by AFOE on 02/10/13.
//  Copyright (c) 2013 andres ocampo. All rights reserved.
//

#import "WebViewController.h"
#import <WebKit/WebKit.h>

@interface WebViewController ()

@end

@implementation WebViewController

@synthesize webView,urlstr, indicator;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    WKWebViewConfiguration *configuration =
            [[WKWebViewConfiguration alloc] init];

        configuration.websiteDataStore =
            [WKWebsiteDataStore defaultDataStore];

        self.webView = [[WKWebView alloc]
            initWithFrame:self.view.bounds
            configuration:configuration];

        self.webView.navigationDelegate = self;
        self.webView.UIDelegate = self;

        /*self.webView.autoresizingMask =
            UIViewAutoresizingFlexibleWidth |
            UIViewAutoresizingFlexibleHeight;*/
        self.webView.frame = CGRectMake(0, 92, 768, 942);

        [self.view addSubview:self.webView];

        NSURL *url =
            [NSURL URLWithString:@"https://ortoface.com/"];

        NSURLRequest *request =
            [NSURLRequest requestWithURL:url];

        [self.webView loadRequest:request];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)webView:(WKWebView *)webView didStartProvisionalNavigation:(WKNavigation *)navigation{
    NSLog(@"WKWebView START: %@", webView.URL.absoluteString);
    [[self indicator] startAnimating];
}

- (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation{
    NSLog(@"WKWebView finished loading: %@", webView.URL.absoluteString);
    [[self indicator] hidesWhenStopped];
}

- (void)webView:(WKWebView *)webView didFailNavigation:(WKNavigation *)navigation
         withError:(NSError *)error {
    NSLog(@"WKWebView navigation error: %@", error);
}

- (void)webView:(WKWebView *)webView
decidePolicyForNavigationAction:(WKNavigationAction *)navigationAction
decisionHandler:(void (^)(WKNavigationActionPolicy policy))decisionHandler {
    
    NSURL *url = navigationAction.request.URL;
    NSLog(@"URL: %@", url.absoluteString);
    decisionHandler(WKNavigationActionPolicyAllow);
}


@end
