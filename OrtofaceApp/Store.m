//
//  Store.m
//  OrtofaceApp
//
//  Created by andres ocampo on 22/01/13.
//  Copyright (c) 2013 andres ocampo. All rights reserved.
//

#import "Store.h"

@implementation Store

@synthesize NombreStore, ApellidoStore;

static Store *sharedStore = nil;


//Store *myStore = [Store sharedStore];
+(Store *)sharedStore
{
    @synchronized(self)
    {
        if (sharedStore == nil)
        {
            sharedStore = [[self alloc]init];
        }
    }
    
    return sharedStore;
}

@end
