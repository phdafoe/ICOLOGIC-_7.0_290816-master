//
//  SuperGaleriaViewController.h
//  iCologic
//
//  Created by AFOE on 23/05/13.
//  Copyright (c) 2013 andres ocampo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SuperGaleriaViewController : UIViewController <UIScrollViewDelegate>

{
    UIPageControl *pageControll;
    UIScrollView *scrollView;
    
}

@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;

@property (strong, nonatomic) IBOutlet UIPageControl *pageControll;

- (IBAction)clickPageControll:(id)sender;

@end
