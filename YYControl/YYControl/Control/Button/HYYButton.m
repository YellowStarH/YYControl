//
//  HYYButton.m
//  YYControl
//
//  Created by 黄杨洋 on 2018/1/11.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import "HYYButton.h"

@interface HYYButton (){
    void (^HYYButtonClick)(UIButton *sender);
}

//@property (nonatomic,strong) UIButton *yyShareBtn;
@property (nonatomic,assign) CGRect rect;
@property (nonatomic,strong) UIColor *backColor;
@property (nonatomic,strong) UIColor *textColor;
@property (nonatomic,strong) NSString *title;


@end

@implementation HYYButton


//-(instancetype)init{
//    self = [super init];
//    if (self) {
//        self.yyShareBtn = [[UIButton alloc]init];
//    }
//    return self;
//}

-(HYYButton * _Nullable (^)(CGRect))Frame{
    return ^ HYYButton *(CGRect rect) {
        self.rect = rect;
        self.frame = self.rect;
        return self;
    };
}


-(HYYButton * _Nullable (^)(NSString * _Nonnull))Text{
    return ^HYYButton *(NSString *text){
        self.title = text;
        [self setTitle:self.title forState:UIControlStateNormal];
        return self;
    };
}

-(HYYButton * _Nullable (^)(UIColor * _Nonnull))BackgroundColor{
    return ^ HYYButton *(UIColor *backgroundColor) {
        self.backColor = backgroundColor;
        self.backgroundColor = self.backColor;
        return self;
    };
}


-(HYYButton * _Nullable (^)(UIColor * _Nonnull))TextColor{
    return ^ HYYButton *(UIColor *textColor) {
        self.textColor = textColor;
        [self setTitleColor:self.textColor forState:UIControlStateNormal];
        return self;
    };
}

-(HYYButton * _Nullable (^)(UIFont * _Nonnull))FontofSize{
    return ^ HYYButton *(UIFont *fontsize) {
        self.titleLabel.font = fontsize;
        return self;
    };
}

-(HYYButton * _Nullable (^)(float))Alpha{
    return ^ HYYButton* (float alpha) {
        self.alpha = alpha;
        return self;
    };
}

-(HYYButton * _Nullable (^)(float))CornerRadius{
    return ^ HYYButton* (float cornerRadius) {
        self.layer.cornerRadius = cornerRadius;
        return self;
    };
}


-(HYYButton * _Nullable (^)(float))BorderWidth{
    return ^ HYYButton* (float borderWidth) {
        self.layer.borderWidth = borderWidth;
        return self;
    };
}

-(HYYButton * _Nullable (^)(UIColor * _Nonnull))BorderColor{
    return ^ HYYButton *(UIColor *borderColor) {
        self.layer.borderColor = borderColor.CGColor;
        return self;
    };
}


-(HYYButton * _Nullable (^)(NSString * _Nonnull))SetImage{
    return ^ HYYButton *(NSString *imagename) {
        [self setImage:[UIImage imageNamed:imagename] forState:UIControlStateNormal];
        return self;
    };
}


-(HYYButton * _Nullable (^)(BOOL))MasksToBounds{
    return ^ HYYButton *(BOOL masksToBounds) {
        self.layer.masksToBounds = masksToBounds;
        return self;
    };
}


-(HYYButton * _Nullable (^)(UIEdgeInsets))ImageEdges{
    return ^ HYYButton *(UIEdgeInsets imageEdges) {
        self.imageEdgeInsets = imageEdges;
        return self;
    };
}

-(HYYButton * _Nullable (^)(NSInteger))Tag{
    return ^ HYYButton *(NSInteger tag) {
        self.tag = tag;
        return self;
    };
}


-(HYYButton *)createHYYButton:(void (^)(HYYButton * _Nullable))button{
    button(self);
    return  self;
}


-(HYYButton *)createHYYButton:(void(^)(HYYButton * HYYButton))button HYYButtonClick:(void (^)(UIButton *sender)) hyyButtonClick{
    button(self);
    HYYButtonClick = hyyButtonClick;
    [self addTarget:self action:@selector(yyClick:) forControlEvents:UIControlEventTouchUpInside];
    return  self;
}

- (void)yyClick:(UIButton *)sender{
    if (self.hyyButtonClickBlock) {
        self.hyyButtonClickBlock(sender);
    }else{
        if (HYYButtonClick) {
            HYYButtonClick(sender);
        }
    }
    
}





@end
