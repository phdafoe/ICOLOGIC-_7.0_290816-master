//
//  ObservacionesViewController.h
//  OrtofaceApp
//
//  Created by andres ocampo on 25/10/12.
//  Copyright (c) 2012 andres ocampo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>
#import <MessageUI/MFMailComposeViewController.h>


@interface ObservacionesViewController : UIViewController  <MFMailComposeViewControllerDelegate>

{
    IBOutlet UITextView *Observaciones;
    
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

-(IBAction)getUIKitScreeshot;

- (IBAction)enviar:(id)sender;

- (IBAction)caragarInformacion:(id)sender;

-(IBAction)dismisseObservaciones:(id)sender;

@property (strong, nonatomic) IBOutlet UILabel *NombreApellido;

@property (strong, nonatomic) NSString *messageNombreApellido;

- (void) displayScreenshotImage;
- (UIImage *)uiKitScreenshot;

@end
