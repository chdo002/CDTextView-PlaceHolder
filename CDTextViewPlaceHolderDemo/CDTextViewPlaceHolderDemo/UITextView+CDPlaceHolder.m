//
//  UITextView+CDPlaceHolder.m
//  CDTextViewPlaceHolderDemo
//
//  Created by chdo on 2017/6/6.
//  Copyright © 2017年 chdo. All rights reserved.
//

#import "UITextView+CDPlaceHolder.h"
#import "objc/runtime.h"


@implementation UITextView (CDPlaceHolder)

static NSString *holderKey = @"holderKey";

-(void)setUpPlaceHolder: (NSString * )title font: (UIFont *)font textColor: (UIColor *)color {
    
    UILabel * placeHolde = [[UILabel alloc] initWithFrame:CGRectMake(5, 5, 100, 20)];
    if (font) {
        placeHolde.font = font;
    } else {
        placeHolde.font = [UIFont systemFontOfSize:12];
    }
    
    if (color) {
        placeHolde.textColor = color;
    } else {
        placeHolde.textColor = [UIColor lightGrayColor];
    }
    
    placeHolde.text = title;
    [self addSubview: placeHolde];
    
    objc_setAssociatedObject(self, &holderKey, placeHolde, OBJC_ASSOCIATION_RETAIN);
    
    
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textfieldChanged) name:UITextViewTextDidChangeNotification object:nil];
    
}

-(void)textfieldChanged{
    UILabel *holdeLabel = objc_getAssociatedObject(self, &holderKey);
    
    if (self.text != nil) {
        if ([self.text isEqualToString:@""]) {
            [holdeLabel setHidden:NO];
        } else {
            [holdeLabel setHidden:YES];
        }
    } else {
        [holdeLabel setHidden:NO];
    }

}

@end
