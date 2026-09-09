//
//  WebViewController.h
//  iCologic
//
//  Created by AFOE on 02/10/13.
//  Copyright (c) 2013 andres ocampo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>
#import "FirstViewController.h"

@interface WebViewController : UIViewController <WKNavigationDelegate, WKUIDelegate>

@property (nonatomic, strong) IBOutlet WKWebView *webView;
@property (nonatomic, strong) IBOutlet UIActivityIndicatorView *indicator;


@property (nonatomic, strong) NSString *urlstr;

@end
