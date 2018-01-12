//
//  YYImage.m
//  YYControl
//
//  Created by 黄杨洋 on 2018/1/11.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import "YYImageView.h"

@implementation YYImageView

-(YYImageView * _Nullable (^)(CGRect))Frame{
    return ^ YYImageView *(CGRect rect) {
        self.frame = rect;
        return self;
    };
}

-(YYImageView * _Nullable (^)(UIColor * _Nonnull))BackgroundColor{
    return ^ YYImageView *(UIColor *backgroundColor) {
        self.backgroundColor = backgroundColor;
        return self;
    };
}

-(YYImageView * _Nullable (^)(float))Alpha{
    return ^ YYImageView* (float alpha) {
        self.alpha = alpha;
        return self;
    };
}


-(YYImageView * _Nullable (^)(float))BorderWidth{
    return ^ YYImageView* (float borderWidth) {
        self.layer.borderWidth = borderWidth;
        return self;
    };
}

-(YYImageView * _Nullable (^)(UIColor * _Nonnull))BorderColor{
    return ^ YYImageView *(UIColor *borderColor) {
        self.layer.borderColor = borderColor.CGColor;
        return self;
    };
}


-(YYImageView * _Nullable (^)(NSString * _Nonnull))SetImage{
    return ^ YYImageView *(NSString *imagename) {
        self.image = [UIImage imageNamed:imagename];
        return self;
    };
}


-(YYImageView * _Nullable (^)(BOOL))MasksToBounds{
    return ^ YYImageView *(BOOL masksToBounds) {
        self.layer.masksToBounds = masksToBounds;
        return self;
    };
}

-(YYImageView * _Nullable (^)(float))CornerRadius{
    return ^ YYImageView* (float cornerRadius) {
        self.layer.cornerRadius = cornerRadius;
        return self;
    };
}

-(YYImageView * _Nullable (^)(NSInteger))Tag{
    return ^ YYImageView *(NSInteger tag) {
        self.tag = tag;
        return self;
    };
}


-(YYImageView *)createYYImageView:(void(^)(YYImageView * yyImageView))imageview{
    imageview(self);
    return  self;
}


@end
