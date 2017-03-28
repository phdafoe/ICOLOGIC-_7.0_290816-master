//
//  FirmaDigtalViewController.m
//  OrtofaceApp
//
//  Created by andres ocampo on 03/11/12.
//  Copyright (c) 2012 andres ocampo. All rights reserved.
//

#import "FirmaDigtalViewController.h"
#import "T1Autograph.h"
#import <QuartzCore/QuartzCore.h>
#import <AVFoundation/AVFoundation.h>
#import <CoreGraphics/CoreGraphics.h>
#import <ImageIO/ImageIO.h>
#import <AssetsLibrary/AssetsLibrary.h>


@implementation FirmaDigtalViewController

@synthesize overlayImageView, backgroundImageView, screenPictureImageView,screenPictureLabel, screenPictureView,screenshotImage, Firma, FirmaModal, outputImage;



- (void)viewDidLoad
{
    [super viewDidLoad];
	self.view.backgroundColor = [UIColor colorWithRed:.255 green:.255 blue:.255 alpha:0];
    CGFloat padding = self.view.frame.size.width / 15;
    UIView *FirmaView = [[UIView alloc] initWithFrame:CGRectMake(padding, 50, 280, 160)];
    FirmaView.layer.borderColor = [UIColor blackColor].CGColor;
    FirmaView.layer.borderWidth = 3;
    FirmaView.layer.cornerRadius = 10;
    [FirmaView setBackgroundColor:[UIColor whiteColor]];
    [self.view addSubview:FirmaView];
    self.Firma = [T1Autograph autographWithView:FirmaView delegate:self];
    [Firma setLicenseCode:@""];
    [Firma setShowDate:YES];
    [Firma setShowHash:YES];
    
    UIImage *buttonBackgroundImage = [UIImage imageNamed:@"bluebutton.png"];
    UIImage *stretchedBackground = [buttonBackgroundImage stretchableImageWithLeftCapWidth:33 topCapHeight:0];
    
    
    UIButton *clearButton = [UIButton buttonWithType:UIButtonTypeCustom];
	[clearButton setFrame:CGRectMake(padding, 230, 130,30)];
	[clearButton setTitle:@"Limpiar" forState:UIControlStateNormal];
	[clearButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
	[clearButton.titleLabel setFont:[UIFont systemFontOfSize:16]];
	[clearButton addTarget:self action:@selector(clearButtonAction:) forControlEvents:UIControlEventTouchUpInside];
	[clearButton setBackgroundImage:stretchedBackground forState:UIControlStateNormal];
	[self.view addSubview:clearButton];
    
    self.overlayImageView.image = [UIImage imageNamed:@"iPhone4"];
    self.backgroundImageView.image = [UIImage imageNamed:@"Aurora"];
    
    _Nombre_Adulto.text = self.messageNombre_Adulto;
    _Apellido_Adulto.text = self.messageApellido_Adulto;
	
    
    
}

-(IBAction)clearButtonAction:(id)sender {
	[Firma reset:self];
}
-(IBAction)doneButtonAction:(id)sender {
	[Firma done:self];
	[Firma reset:self];
    
    /*
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Muchas Gracias!"
                                                    message:@"Si Usted a firmado correctamente cierre a continuación la ventana emergente y diríjase a la Recepción"
                                                   delegate:nil
                                          cancelButtonTitle:nil
                                          otherButtonTitles:@"Que tenga un buen día!", nil];
    
    [alert show];*/

}


- (void) didDismissModalView
{
    NSLog(@"La Firma ha sido cancelada");
}

- (void) FirmaDidCompleteWhitNoData
{
    NSLog(@"Ha pesionado en el boton hecho sin Firma");
}


- (void) Firma: (T1Autograph *)Firma didCompleteWhitSignature: (T1Signature *)signature
{
    NSLog(@"-- Firma completada. --");
    NSLog(@"Hash Value: %@", signature.hashString);
    NSLog(@"Frame : %@", NSStringFromCGRect(signature.frame));
    
    [outputImage removeFromSuperview];
    self.outputImage = [signature imageView];
    [outputImage setFrame:CGRectMake(self.view.frame.size.width / 15, 320, outputImage.frame.size.width, outputImage.frame.size.height)];
    [self.view addSubview:outputImage];
    
    if (FirmaModal != nil)
    {
        FirmaModal = nil;
    }
    
}

-(IBAction)getUIKitScreeshot
{
    self.screenPictureView = nil;
    self.screenshotImage = [self uiKitScreenshot];
    [self performSelector:@selector(displayScreenshotImage) withObject:nil afterDelay:0.10];
    self.screenPictureLabel.text = @"Imagen Completada";
}


-(UIImage *)uiKitScreenshot

{
    CGSize imageSize = [[UIScreen mainScreen]bounds].size;
    
    if (NULL != &UIGraphicsBeginImageContextWithOptions)
        UIGraphicsBeginImageContextWithOptions(imageSize, NO, 0);
    else
        UIGraphicsBeginImageContext(imageSize);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    for (UIWindow *window in [[UIApplication sharedApplication] windows])
    {
        if (![window respondsToSelector:@selector(screen)] || [window screen] == [UIScreen mainScreen])
        {
            CGContextSaveGState(context);
            CGContextTranslateCTM(context, [window center].x, [window center].y);
            CGContextConcatCTM(context, [window transform]);
            CGContextTranslateCTM(context,  - [window bounds].size.width * [[window layer] anchorPoint].x ,
                                  - [window bounds].size.height * [[window layer]anchorPoint].y);
            [[window layer]renderInContext:context];
            CGContextRestoreGState(context);
        }
    }
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil);
    
    /*
    MFMailComposeViewController *picker = [[MFMailComposeViewController alloc] init];
    
    picker.mailComposeDelegate = self;
    
    [picker setSubject:@"Envío *.jpg para base de datos Nuevos pacientes"];
    
    NSArray *toRecipient = [NSArray arrayWithObject:@"phdafoe@gmail.com"];
    
    [picker setToRecipients:toRecipient];
        
    NSData *imageData = UIImageJPEGRepresentation(image, 1);
    
    [picker addAttachmentData:imageData mimeType:@"../jpg" fileName:@"Screenshot.jpg"];
    
    NSString *emailBody = @"Texto complementario";
    
    [picker setMessageBody:emailBody isHTML:YES];
    
    [self presentViewController:picker animated:YES completion:nil];*/
    
    
     UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Gracias!"
                                                     message:@"El Proceso de captura de Datos a terminado satisfactoriamente, pulse por favor en el botón Cerrar"
                                                    delegate:nil
                                           cancelButtonTitle:nil
                                           otherButtonTitles:@"OK!", nil];
     
     [alert show];
    
    return image;
    
    
    }


/*
- (void)mailComposeController:(MFMailComposeViewController*)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError*)error
{
    switch (result)
    {
        case MFMailComposeResultCancelled:
            NSLog(@"Mail cancelled: you cancelled the operation and no email message was queued.");
            break;
        case MFMailComposeResultSaved:
            NSLog(@"Mail saved: you saved the email message in the drafts folder.");
            break;
        case MFMailComposeResultSent:
            NSLog(@"Mail send: the email message is queued in the outbox. It is ready to send.");
            break;
        case MFMailComposeResultFailed:
            NSLog(@"Mail failed: the email message was not saved or queued, possibly due to an error.");
            break;
        default:
            NSLog(@"Mail not sent.");
            break;
    }
    
    [self dismissViewControllerAnimated:YES completion:nil];
}*/

-(void)displayScreenshotImage
{
    self.screenPictureImageView.layer.minificationFilter = kCAFilterLinear;
    self.screenPictureImageView.layer.minificationFilterBias = 0.0;
    self.screenPictureImageView.image = self.screenshotImage;
    self.screenPictureLabel.text = @"Imagen Completada";
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
   
}


@end
