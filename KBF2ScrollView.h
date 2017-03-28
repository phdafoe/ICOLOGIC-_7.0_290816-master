//
//  KBF2ScrollView.h
//  OrtofaceApp
//
//  Created by andres ocampo on 24/10/12.
//  Copyright (c) 2012 andres ocampo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KBF2ScrollView : UIScrollView

{
    UIEdgeInsets    _priorInset;
    BOOL            _priorInsetSaved;
    BOOL            _keyboardVisible;
    CGRect          _keyboardRect;
    CGSize          _originalContentSize;
}

-(void)adjustOffsetToIdealIfNeeded;

@end
