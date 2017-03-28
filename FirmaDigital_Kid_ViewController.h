//
//  FirmaDigital_Kid_ViewController.h
//  iCologic
//
//  Created by Andres Ocampo on 07/05/13.
//  Copyright (c) 2013 andres ocampo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "T1Autograph.h"
#import <MessageUI/MessageUI.h>
#import <MessageUI/MFMailComposeViewController.h>


@interface FirmaDigital_Kid_ViewController : UIViewController <T1AutographDelegate, MFMailComposeViewControllerDelegate>
{
    T1Autograph *Firma;
    T1Autograph *FirmaModal;
    UIImageView *outputImage;
    
    UIImageView *backgroundImageView;
    UIImageView *overlayImageView;
    BOOL scaning;
}

@property (nonatomic, retain) UIImage *screenshotImage;
@property (nonatomic, retain) IBOutlet UIImageView *backgroundImageView;
@property (nonatomic, retain) IBOutlet UIImageView *overlayImageView;
@property (nonatomic, retain) IBOutlet UIView *screenPictureView;
@property (nonatomic, retain) IBOutlet UILabel *screenPictureLabel;
@property (nonatomic, retain) IBOutlet UIImageView * screenPictureImageView;



@property (retain) T1Autograph *Firma;
@property (retain) T1Autograph *FirmaModal;
@property (retain) UIImageView *outputImage;


-(IBAction)getUIKitScreeshot;

@property (strong, nonatomic) IBOutlet UILabel *Nombre_Kid;
@property (strong, nonatomic) IBOutlet UILabel *Apellido_Kid;

@property (strong, nonatomic) NSString *messageNombre_kid;
@property (strong, nonatomic) NSString *messageApellido_Kid;

- (void) displayScreenshotImage;
- (UIImage *)uiKitScreenshot;

@end
