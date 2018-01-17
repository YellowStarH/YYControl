//
//  YYLabel.m
//  YYControl
//
//  Created by 黄杨洋 on 2018/1/11.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import "YYLabel.h"

@interface YYLabel ()

@property (nonatomic,strong) NSString *textString;
@property (nonatomic,strong) NSMutableAttributedString *attributedString;
@property (nonatomic,strong) NSMutableParagraphStyle * paragraphStyle1;
@property (nonatomic,strong) NSMutableDictionary *attDic;
@property (nonatomic,assign) NSInteger wordspace;
@property (nonatomic,assign) NSInteger linespace;

@end

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
        self.textString = text;
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
-(YYLabel * _Nullable (^)(NSInteger))NumberOfLines{
    return ^ YYLabel *(NSInteger numberOfLines) {
        self.numberOfLines = numberOfLines;
        return self;
    };
}

- (YYLabel * _Nullable (^)(NSInteger))LineSpace{
    return ^ YYLabel *(NSInteger linespace) {
        NSAssert(self.textString, @"先设置文本的text,再设置行间距");
        self.attDic = [NSMutableDictionary dictionary];
        if (self.wordspace) {
            [self.attDic setValue:@(self.wordspace) forKey:NSKernAttributeName];
        }
        self.paragraphStyle1 = [[NSMutableParagraphStyle alloc] init];
        self.paragraphStyle1.lineSpacing = linespace;
        self.attributedString = [[NSMutableAttributedString alloc] initWithString:self.textString attributes:self.attDic];
        [self.attributedString addAttribute:NSParagraphStyleAttributeName value:self.paragraphStyle1 range: NSMakeRange(0, self.textString.length)];
        self.linespace = linespace;
        [self setAttributedText:self.attributedString];
        return self;
    };
}


-(YYLabel * _Nullable (^)(NSInteger))WordSpace{
    return ^ YYLabel *(NSInteger wordSpace) {
        NSAssert(self.textString, @"先设置文本的text,再设置字间距");
        self.attDic = [NSMutableDictionary dictionary];
        [self.attDic setValue:@(wordSpace) forKey:NSKernAttributeName];
        self.paragraphStyle1 = [[NSMutableParagraphStyle alloc] init];
        if (self.linespace) {
            self.paragraphStyle1.lineSpacing = self.linespace;
        }
        self.attributedString = [[NSMutableAttributedString alloc] initWithString:self.textString attributes:self.attDic];
        [self.attributedString addAttribute:NSParagraphStyleAttributeName value:self.paragraphStyle1 range: NSMakeRange(0, self.textString.length)];
        self.wordspace = wordSpace;
        [self setAttributedText:self.attributedString];
        return self;
    };
}

-(YYLabel *)createYYLabel:(void(^)(YYLabel * yyLabel))label{
    label(self);
    return  self;
}

@end
