//
//  ObservacionesViewController.m
//  OrtofaceApp
//
//  Created by andres ocampo on 25/10/12.
//  Copyright (c) 2012 andres ocampo. All rights reserved.
//

#import "ObservacionesViewController.h"
#import <QuartzCore/QuartzCore.h>
#import <AVFoundation/AVFoundation.h>
#import <CoreGraphics/CoreGraphics.h>
#import <ImageIO/ImageIO.h>
#import <AssetsLibrary/AssetsLibrary.h>


@implementation ObservacionesViewController


@synthesize overlayImageView,backgroundImageView,screenshotImage,screenPictureView,screenPictureLabel,screenPictureImageView,NombreApellido;



- (void)viewDidLoad
{
    [super viewDidLoad];
	
    
    self.overlayImageView.image = [UIImage imageNamed:@"iPhone4"];
    self.backgroundImageView.image = [UIImage imageNamed:@"Aurora"];
    
    NombreApellido.text = self.messageNombreApellido;
    
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
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Atención!"
                                                    message:@"Proceso realizado Satisfactoriamente"
                                                   delegate:nil
                                          cancelButtonTitle:nil
                                          otherButtonTitles:@"OK!", nil];
    
    [alert show];
   
    
   
    MFMailComposeViewController *picker = [[MFMailComposeViewController alloc] init];
    
    picker.mailComposeDelegate = self;
    
    [picker setSubject:@"Envío *.jpg para base de datos Nuevos pacientes"];
    
    NSArray *toRecipient = @[@"beatriz@ortoface.com", @"comunicacion@ortoface.com"];
    
    [picker setToRecipients:toRecipient];
    
    NSData *imageData = UIImageJPEGRepresentation(image, 1);
    
    [picker addAttachmentData:imageData mimeType:@"../jpg" fileName:@"Screenshot.jpg"];
    
    NSString *emailBody = @"Texto complementario";
    
    [picker setMessageBody:emailBody isHTML:YES];
    
    [self presentViewController:picker animated:YES completion:nil];
    
     return image;
   
}

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
}

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
    // Dispose of any resources that can be recreated.
}

- (IBAction)enviar:(id)sender
{
    NSString *enviaStringObservaciones = Observaciones.text;
    NSUserDefaults *defaultsObservaciones = [NSUserDefaults standardUserDefaults];
    [defaultsObservaciones setObject:enviaStringObservaciones forKey:@"enviaStringObservaciones"];
    [defaultsObservaciones synchronize];
}

- (IBAction)caragarInformacion:(id)sender
{
    NSUserDefaults *defaultsObervaciones = [NSUserDefaults standardUserDefaults];
    NSString *cargaStringObservaciones = [defaultsObervaciones objectForKey:@"enviaStringObservaciones"];
    [Observaciones setText:cargaStringObservaciones];
}

-(IBAction)dismisseObservaciones:(id)sender
{
    [sender resignFirstResponder];
}

@end
