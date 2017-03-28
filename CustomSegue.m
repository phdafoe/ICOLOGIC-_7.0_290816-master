//
//  CustomSegue.m
//  OrtofaceApp
//
//  Created by andres ocampo on 26/12/12.
//  Copyright (c) 2012 andres ocampo. All rights reserved.
//

#import "CustomSegue.h"


@implementation CustomSegue

-(void)perform
{
    //nueva pagina
    
    [self.sourceViewController presentViewController:self.destinationViewController animated:YES completion:nil];
    
    
}

@end
