//
//  YYScrollView.m
//  YYControl
//
//  Created by 黄杨洋 on 2018/1/12.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import "YYScrollView.h"

@implementation YYScrollView

-(YYScrollView * _Nullable (^)(CGRect))Frame{
    return ^ YYScrollView *(CGRect rect) {
        self.frame = rect;
        return self;
    };
}

-(YYScrollView * _Nullable (^)(UIColor * _Nonnull))BackgroundColor{
    return ^ YYScrollView *(UIColor *backgroundColor) {
        self.backgroundColor = backgroundColor;
        return self;
    };
}


-(YYScrollView * _Nullable (^)(BOOL))PagingEnabled{
    return ^ YYScrollView *(BOOL pagingEnabled) {
        self.pagingEnabled = pagingEnabled;
        return self;
    };
}


-(YYScrollView * _Nullable (^)(BOOL))ShowsHorizontalScrollIndicator{
    return ^ YYScrollView *(BOOL showsHorizontalScrollIndicator) {
        self.showsHorizontalScrollIndicator = showsHorizontalScrollIndicator;
        return self;
    };
}


-(YYScrollView * _Nullable (^)(BOOL))ShowsVerticalScrollIndicator{
    return ^ YYScrollView *(BOOL showsVerticalScrollIndicator) {
        self.showsVerticalScrollIndicator = showsVerticalScrollIndicator;
        return self;
    };
}


-(YYScrollView * _Nullable (^)(BOOL))ScrollEnabled{
    return ^ YYScrollView *(BOOL scrollEnabled) {
        self.scrollEnabled = scrollEnabled;
        return self;
    };
}

-(YYScrollView * _Nullable (^)(BOOL))Bounces{
    return ^ YYScrollView *(BOOL bounces) {
        self.bounces = bounces;
        return self;
    };
}


-(YYScrollView * _Nullable (^)(CGSize))ContentSize{
    return ^ YYScrollView *(CGSize contentSize) {
        self.contentSize = contentSize;
        return self;
    };
}


-(YYScrollView * _Nullable (^)(CGPoint))ContentOffset{
    return ^ YYScrollView *(CGPoint contentOffset) {
        self.contentOffset = contentOffset;
        return self;
    };
}

-(YYScrollView * _Nullable (^)(BOOL))DirectionalLockEnabled{
    return ^ YYScrollView *(BOOL directionalLockEnabled) {
        self.directionalLockEnabled = directionalLockEnabled;
        return self;
    };
}

-(YYScrollView * _Nullable (^)(BOOL))MasksToBounds{
    return ^ YYScrollView *(BOOL masksToBounds) {
        self.layer.masksToBounds = masksToBounds;
        return self;
    };
}

-(YYScrollView * _Nullable (^)(float))CornerRadius{
    return ^ YYScrollView* (float cornerRadius) {
        self.layer.cornerRadius = cornerRadius;
        return self;
    };
}

-(YYScrollView * _Nullable (^)(float))Alpha{
    return ^ YYScrollView *(float alpha) {
        self.alpha = alpha;
        return self;
    };
}

-(YYScrollView * _Nullable (^)(NSInteger))Tag{
    return ^ YYScrollView *(NSInteger tag) {
        self.tag = tag;
        return self;
    };
}

-(YYScrollView *)createYYScrollView:(void(^)(YYScrollView * yyScrollView))scrollView{
    scrollView(self);
    return  self;
}



@end
