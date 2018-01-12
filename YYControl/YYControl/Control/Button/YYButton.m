//
//  YYButton.m
//  YYControl
//
//  Created by 黄杨洋 on 2018/1/11.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import "YYButton.h"

@interface YYButton (){
    void (^YYButtonClick)(UIButton *sender);
}

//@property (nonatomic,strong) UIButton *yyShareBtn;
@property (nonatomic,assign) CGRect rect;
@property (nonatomic,strong) UIColor *backColor;
@property (nonatomic,strong) UIColor *textColor;
@property (nonatomic,strong) NSString *title;


@end

@implementation YYButton


//-(instancetype)init{
//    self = [super init];
//    if (self) {
//        self.yyShareBtn = [[UIButton alloc]init];
//    }
//    return self;
//}

-(YYButton * _Nullable (^)(CGRect))Frame{
    return ^ YYButton *(CGRect rect) {
        _rect = rect;
        self.frame = _rect;
        return self;
    };
}


-(YYButton * _Nullable (^)(NSString * _Nonnull))Title{
    return ^YYButton *(NSString *title){
        _title = title;
        [self setTitle:_title forState:UIControlStateNormal];
        return self;
    };
}

-(YYButton * _Nullable (^)(UIColor * _Nonnull))BackgroundColor{
    return ^ YYButton *(UIColor *backgroundColor) {
        _backColor = backgroundColor;
        self.backgroundColor = _backColor;
        return self;
    };
}


-(YYButton * _Nullable (^)(UIColor * _Nonnull))TextColor{
    return ^ YYButton *(UIColor *textColor) {
        _textColor = textColor;
        [self setTitleColor:_textColor forState:UIControlStateNormal];
        return self;
    };
}

-(YYButton * _Nullable (^)(UIFont * _Nonnull))FontofSize{
    return ^ YYButton *(UIFont *fontsize) {
        self.titleLabel.font = fontsize;
        return self;
    };
}

-(YYButton * _Nullable (^)(float))Alpha{
    return ^ YYButton* (float alpha) {
        self.alpha = alpha;
        return self;
    };
}

-(YYButton * _Nullable (^)(float))CornerRadius{
    return ^ YYButton* (float cornerRadius) {
        self.layer.cornerRadius = cornerRadius;
        return self;
    };
}


-(YYButton * _Nullable (^)(float))BorderWidth{
    return ^ YYButton* (float borderWidth) {
        self.layer.borderWidth = borderWidth;
        return self;
    };
}

-(YYButton * _Nullable (^)(UIColor * _Nonnull))BorderColor{
    return ^ YYButton *(UIColor *borderColor) {
        self.layer.borderColor = borderColor.CGColor;
        return self;
    };
}


-(YYButton * _Nullable (^)(NSString * _Nonnull))SetImage{
    return ^ YYButton *(NSString *imagename) {
        [self setImage:[UIImage imageNamed:imagename] forState:UIControlStateNormal];
        return self;
    };
}


-(YYButton * _Nullable (^)(BOOL))MasksToBounds{
    return ^ YYButton *(BOOL masksToBounds) {
        self.layer.masksToBounds = masksToBounds;
        return self;
    };
}


-(YYButton * _Nullable (^)(UIEdgeInsets))ImageEdges{
    return ^ YYButton *(UIEdgeInsets imageEdges) {
        self.imageEdgeInsets = imageEdges;
        return self;
    };
}

-(YYButton * _Nullable (^)(NSInteger))Tag{
    return ^ YYButton *(NSInteger tag) {
        self.tag = tag;
        return self;
    };
}


-(YYButton *)createYYButton:(void(^)(YYButton * yybutton))button YYButtonClick:(void (^)(UIButton *sender)) yybuttonClick{
    button(self);
    YYButtonClick = yybuttonClick;
    [self addTarget:self action:@selector(yyClick:) forControlEvents:UIControlEventTouchUpInside];
    return  self;
}

- (void)yyClick:(UIButton *)sender{
    if (YYButtonClick) {
        YYButtonClick(sender);
    }
}





@end
