//
//  YYLabel.m
//  YYControl
//
//  Created by 黄杨洋 on 2018/1/11.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import "YYLabel.h"

@implementation YYLabel


-(YYLabel * _Nullable (^)(CGRect))Frame{
    return ^ YYLabel *(CGRect rect) {
        self.frame = rect;
        return self;
    };
}


-(YYLabel * _Nullable (^)(NSString * _Nonnull))Text{
    return ^YYLabel *(NSString *text){
        self.text = text;
        return self;
    };
}

-(YYLabel * _Nullable (^)(UIColor * _Nonnull))backColor{
    return ^ YYLabel *(UIColor *backgroundColor) {
        self.backgroundColor = backgroundColor;
        return self;
    };
}


-(YYLabel * _Nullable (^)(UIColor * _Nonnull))TextColor{
    return ^ YYLabel *(UIColor *textColor) {
        self.textColor = textColor;
        return self;
    };
}

-(YYLabel * _Nullable (^)(UIFont * _Nonnull))FontofSize{
    return ^ YYLabel *(UIFont *fontsize) {
        self.font = fontsize;
        return self;
    };
}

-(YYLabel * _Nullable (^)(float))Alpha{
    return ^ YYLabel* (float alpha) {
        self.alpha = alpha;
        return self;
    };
}

-(YYLabel * _Nullable (^)(float))CornerRadius{
    return ^ YYLabel* (float cornerRadius) {
        self.layer.cornerRadius = cornerRadius;
        return self;
    };
}


-(YYLabel * _Nullable (^)(float))BorderWidth{
    return ^ YYLabel* (float borderWidth) {
        self.layer.borderWidth = borderWidth;
        return self;
    };
}

-(YYLabel * _Nullable (^)(UIColor * _Nonnull))BorderColor{
    return ^ YYLabel *(UIColor *borderColor) {
        self.layer.borderColor = borderColor.CGColor;
        return self;
    };
}



-(YYLabel * _Nullable (^)(BOOL))MasksToBounds{
    return ^ YYLabel *(BOOL masksToBounds) {
        self.layer.masksToBounds = masksToBounds;
        return self;
    };
}

-(YYLabel * _Nullable (^)(NSTextAlignment))TextAlignment{
    return ^ YYLabel *(NSTextAlignment textAlignment) {
        self.textAlignment = textAlignment;
        return self;
    };
}

-(YYLabel * _Nullable (^)(NSInteger))Tag{
    return ^ YYLabel *(NSInteger tag) {
        self.tag = tag;
        return self;
    };
}

-(YYLabel *)createYYLabel:(void(^)(YYLabel * yyLabel))label{
    label(self);
    return  self;
}

@end
