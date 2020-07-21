//
//  YYImage.m
//  YYControl
//
//  Created by 黄杨洋 on 2018/1/11.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import "HYYImageView.h"

@interface HYYImageView()

@end

@implementation HYYImageView

-(HYYImageView * _Nullable (^)(CGRect))Frame{
    return ^ HYYImageView *(CGRect rect) {
        self.frame = rect;
        return self;
    };
}

-(HYYImageView * _Nullable (^)(UIColor * _Nonnull))BackgroundColor{
    return ^ HYYImageView *(UIColor *backgroundColor) {
        self.backgroundColor = backgroundColor;
        return self;
    };
}

-(HYYImageView * _Nullable (^)(float))Alpha{
    return ^ HYYImageView* (float alpha) {
        self.alpha = alpha;
        return self;
    };
}


-(HYYImageView * _Nullable (^)(float))BorderWidth{
    return ^ HYYImageView* (float borderWidth) {
        self.layer.borderWidth = borderWidth;
        return self;
    };
}

-(HYYImageView * _Nullable (^)(UIColor * _Nonnull))BorderColor{
    return ^ HYYImageView *(UIColor *borderColor) {
        self.layer.borderColor = borderColor.CGColor;
        return self;
    };
}


-(HYYImageView * _Nullable (^)(NSString * _Nonnull))SetImage{
    return ^ HYYImageView *(NSString *imagename) {
        self.image = [UIImage imageNamed:imagename];
        return self;
    };
}


-(HYYImageView * _Nullable (^)(BOOL))MasksToBounds{
    return ^ HYYImageView *(BOOL masksToBounds) {
        self.layer.masksToBounds = masksToBounds;
        return self;
    };
}

-(HYYImageView * _Nullable (^)(float))CornerRadius{
    return ^ HYYImageView* (float cornerRadius) {
        self.layer.cornerRadius = cornerRadius;
        return self;
    };
}

-(HYYImageView * _Nullable (^)(NSInteger))Tag{
    return ^ HYYImageView *(NSInteger tag) {
        self.tag = tag;
        return self;
    };
}

-(HYYImageView * _Nullable (^)(BOOL))UserInteractionEnabled{
    return ^ HYYImageView* (BOOL userInteractionEnabled) {
        self.userInteractionEnabled = userInteractionEnabled;
        return self;
    };
}


-(HYYImageView *)createHYYImageView:(void(^)(HYYImageView * HYYImageView))imageview{
    
    imageview(self);
    
    if (self.userInteractionEnabled) {
        UITapGestureRecognizer *singleTap =

        [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(clickImage:)];

        [self addGestureRecognizer:singleTap];
    }
    
    
    
    return  self;
}

- (void)clickImage:(UITapGestureRecognizer*)gesture{
    if (self.imageViewClick) {
        self.imageViewClick(gesture);
    }
}

@end
