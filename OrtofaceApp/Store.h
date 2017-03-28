//
//  Store.h
//  OrtofaceApp
//
//  Created by andres ocampo on 22/01/13.
//  Copyright (c) 2013 andres ocampo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Store : NSObject
{
    NSString *Nombre;
    NSString *Apellido;
}

@property (nonatomic, strong) NSString *NombreStore;
@property (nonatomic, strong) NSString *ApellidoStore;

+(Store *)sharedStore;

@end
