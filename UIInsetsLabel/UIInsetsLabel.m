//
//  UIInsetsLabel.m
//  UIInsetsLabel
//
//  Created by SMC-MAC on 15/12/21.
//  Copyright © 2015年 SMC-MAC. All rights reserved.
//

#import "UIInsetsLabel.h"

@implementation UIInsetsLabel

- (instancetype)init
{
    if (self = [super init]) {
        [self setDefaults];
    }
    return self;
}

- (void)setDefaults {
    _textEdgeInsets = UIEdgeInsetsZero;
    [self setTop:0.0f];
    [self setLeft:0.0f];
    [self setBottom:0.0f];
    [self setRight:0.0f];
}

- (void)setTop:(CGFloat)top {
    _top = top;
    _textEdgeInsets.top = _top;
}

- (void)setLeft:(CGFloat)left {
    _left = left;
    _textEdgeInsets.left = _left;
}

- (void)setBottom:(CGFloat)bottom {
    _bottom = bottom;
    _textEdgeInsets.bottom = _bottom;
}

- (void)setRight:(CGFloat)right {
    _right = right;
    _textEdgeInsets.right = _right;
}

- (void)setTextEdgeInsets:(UIEdgeInsets)textEdgeInsets {
    _textEdgeInsets = textEdgeInsets;
}

- (void)drawTextInRect:(CGRect)rect {
//    UIEdgeInsets _textInsets = UIEdgeInsetsMake(_top, _left, _bottom, _right);
    return [super drawTextInRect:UIEdgeInsetsInsetRect(rect, _textEdgeInsets)];
}

-(void)setCornerRadius:(CGFloat)cornerRadius{
    _cornerRadius = cornerRadius;
    self.layer.cornerRadius = cornerRadius;
    self.layer.masksToBounds = cornerRadius > 0?YES:NO;
}

@end
