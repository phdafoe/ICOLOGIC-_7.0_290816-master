//
//  WebViewController.h
//  iCologic
//
//  Created by AFOE on 02/10/13.
//  Copyright (c) 2013 andres ocampo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FirstViewController.h"

@interface WebViewController : UIViewController <UIWebViewDelegate>

@property (nonatomic, strong) IBOutlet UIWebView *webView;

@property (nonatomic, strong) NSString *urlstr;

@end
