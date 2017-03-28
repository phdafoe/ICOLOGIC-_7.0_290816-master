//
//  FirstViewController.h
//  OrtofaceApp
//
//  Created by andres ocampo on 16/10/12.
//  Copyright (c) 2012 andres ocampo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "iCarousel.h"



@interface FirstViewController : UIViewController <UIScrollViewDelegate, iCarouselDataSource, iCarouselDelegate>
{
    UIPageControl *pageControll;
    UIScrollView *scrollView;
    IBOutlet UIButton *webOrtoface;
    
}

@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong, nonatomic) IBOutlet UIPageControl *pageControll;
@property (nonatomic, strong) IBOutlet UIButton *webOrtoface;
@property (weak, nonatomic) IBOutlet UIScrollView *myScrollViewPersonal;
@property (weak, nonatomic) IBOutlet UIPageControl *myPageControlPersonal;


- (IBAction)clickPageControll:(id)sender;

//@property (strong, nonatomic) IBOutlet iCarousel *carousel;

@property (nonatomic) NSMutableArray *items;

@property (nonatomic, strong) NSString *urlstr;








@end
