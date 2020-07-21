//
//  HYYLabel.m
//  YYControl
//
//  Created by 黄杨洋 on 2018/1/11.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import "HYYLabel.h"

@interface HYYLabel ()

@property (nonatomic,strong) NSString *textString;
@property (nonatomic,strong) NSMutableAttributedString *attributedString;
@property (nonatomic,strong) NSMutableParagraphStyle * paragraphStyle1;
@property (nonatomic,strong) NSMutableDictionary *attDic;
@property (nonatomic,assign) NSInteger wordspace;
@property (nonatomic,assign) NSInteger linespace;

@end

@implementation HYYLabel


-(HYYLabel * _Nullable (^)(CGRect))Frame{
    return ^ HYYLabel *(CGRect rect) {
        self.frame = rect;
        return self;
    };
}


-(HYYLabel * _Nullable (^)(NSString * _Nonnull))Text{
    return ^HYYLabel *(NSString *text){
        self.text = text;
        self.textString = text;
        return self;
    };
}

-(HYYLabel * _Nullable (^)(UIColor * _Nonnull))backColor{
    return ^ HYYLabel *(UIColor *backgroundColor) {
        self.backgroundColor = backgroundColor;
        return self;
    };
}


-(HYYLabel * _Nullable (^)(UIColor * _Nonnull))TextColor{
    return ^ HYYLabel *(UIColor *textColor) {
        self.textColor = textColor;
        return self;
    };
}

-(HYYLabel * _Nullable (^)(UIFont * _Nonnull))FontofSize{
    return ^ HYYLabel *(UIFont *fontsize) {
        self.font = fontsize;
        return self;
    };
}

-(HYYLabel * _Nullable (^)(float))Alpha{
    return ^ HYYLabel* (float alpha) {
        self.alpha = alpha;
        return self;
    };
}

-(HYYLabel * _Nullable (^)(float))CornerRadius{
    return ^ HYYLabel* (float cornerRadius) {
        self.layer.cornerRadius = cornerRadius;
        return self;
    };
}


-(HYYLabel * _Nullable (^)(float))BorderWidth{
    return ^ HYYLabel* (float borderWidth) {
        self.layer.borderWidth = borderWidth;
        return self;
    };
}

-(HYYLabel * _Nullable (^)(UIColor * _Nonnull))BorderColor{
    return ^ HYYLabel *(UIColor *borderColor) {
        self.layer.borderColor = borderColor.CGColor;
        return self;
    };
}



-(HYYLabel * _Nullable (^)(BOOL))MasksToBounds{
    return ^ HYYLabel *(BOOL masksToBounds) {
        self.layer.masksToBounds = masksToBounds;
        return self;
    };
}

-(HYYLabel * _Nullable (^)(NSTextAlignment))TextAlignment{
    return ^ HYYLabel *(NSTextAlignment textAlignment) {
        self.textAlignment = textAlignment;
        return self;
    };
}

-(HYYLabel * _Nullable (^)(NSInteger))Tag{
    return ^ HYYLabel *(NSInteger tag) {
        self.tag = tag;
        return self;
    };
}
-(HYYLabel * _Nullable (^)(NSInteger))NumberOfLines{
    return ^ HYYLabel *(NSInteger numberOfLines) {
        self.numberOfLines = numberOfLines;
        return self;
    };
}
-(HYYLabel * _Nullable (^)(BOOL))UserInteractionEnabled{
    return ^ HYYLabel* (BOOL userInteractionEnabled) {
        self.userInteractionEnabled = userInteractionEnabled;
        return self;
    };
}

- (HYYLabel * _Nullable (^)(NSInteger))LineSpace{
    return ^ HYYLabel *(NSInteger linespace) {
        NSAssert(self.textString, @"先设置文本的text,再设置行间距");
        if (!self.attDic) {
            self.attDic = [NSMutableDictionary dictionary];
        }
        if (self.wordspace) {
            [self.attDic setValue:@(self.wordspace) forKey:NSKernAttributeName];
        }
        if (!self.paragraphStyle1) {
            
            self.paragraphStyle1 = [[NSMutableParagraphStyle alloc] init];
        }
        self.paragraphStyle1.lineSpacing = linespace;
        self.attributedString = [[NSMutableAttributedString alloc] initWithString:self.textString attributes:self.attDic];
        [self.attributedString addAttribute:NSParagraphStyleAttributeName value:self.paragraphStyle1 range: NSMakeRange(0, self.textString.length)];
        self.linespace = linespace;
        [self setAttributedText:self.attributedString];
        return self;
    };
}


-(HYYLabel * _Nullable (^)(NSInteger))WordSpace{
    return ^ HYYLabel *(NSInteger wordSpace) {
        NSAssert(self.textString, @"先设置文本的text,再设置字间距");
        if (!self.attDic) {
            self.attDic = [NSMutableDictionary dictionary];
        }
        
        [self.attDic setValue:@(wordSpace) forKey:NSKernAttributeName];
        if (!self.paragraphStyle1) {
            
            self.paragraphStyle1 = [[NSMutableParagraphStyle alloc] init];
        }
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

-(HYYLabel * _Nullable (^)(BOOL))IsAdaptionHeight{
    return ^ HYYLabel *(BOOL isAdaptionHeight){
        if (isAdaptionHeight) {
            NSAssert(self.textString, @"先设置文本的text,再设置自适应");
            self.frame = CGRectMake(CGRectGetMinX(self.frame), CGRectGetMinY(self.frame), CGRectGetWidth(self.frame), [self heightForFont:self.font width:CGRectGetWidth(self.frame)] + 8);
        }
        return self;
    };
}

-(HYYLabel * _Nullable (^)(BOOL))IsAdaptionWidth{
    return ^ HYYLabel *(BOOL isAdaptionWidth){
        if (isAdaptionWidth) {
            NSAssert(self.textString, @"先设置文本的text,再设置自适应");
            self.frame = CGRectMake(CGRectGetMinX(self.frame), CGRectGetMinY(self.frame), [self widthForFont:self.font height:CGRectGetHeight(self.frame)], CGRectGetHeight(self.frame));
        }
        return self;
    };
}


-(HYYLabel *)createHYYLabel:(void(^)(HYYLabel * HYYLabel))label{
    label(self);
    
    
    if (self.userInteractionEnabled) {
        UITapGestureRecognizer *singleTap =

        [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(clickLabel:)];

        [self addGestureRecognizer:singleTap];
    }
    
    return  self;
}

- (void)clickLabel:(UITapGestureRecognizer*)gesture{
    if (self.labelClick) {
        self.labelClick(gesture);
    }
}




#pragma mark - 计算高度
- (CGFloat)heightForFont:(UIFont *)font width:(CGFloat)width {
    CGSize size = [self sizeForFont:font size:CGSizeMake(width, HUGE) mode:NSLineBreakByWordWrapping];
    return size.height;
}

#pragma mark - 计算宽度
- (CGFloat)widthForFont:(UIFont *)font height:(CGFloat)height {
    CGSize size = [self sizeForFont:font size:CGSizeMake(HUGE, height) mode:NSLineBreakByWordWrapping];
    return size.width;
}

- (CGSize)sizeForFont:(UIFont *)font size:(CGSize)size mode:(NSLineBreakMode)lineBreakMode {
    CGSize result;
    if (!font) font = [UIFont systemFontOfSize:12];
    
    NSMutableDictionary *attr = [NSMutableDictionary new];
    attr[NSFontAttributeName] = font;
    if (lineBreakMode != NSLineBreakByWordWrapping) {
        NSMutableParagraphStyle *paragraphStyle = [NSMutableParagraphStyle new];
        paragraphStyle.lineBreakMode = lineBreakMode;
        attr[NSParagraphStyleAttributeName] = paragraphStyle;
    }
    self.attDic[NSFontAttributeName] = font;
    self.attDic[NSParagraphStyleAttributeName] = self.paragraphStyle1;
    
    CGRect rect = [self.textString boundingRectWithSize:size
                                                options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading
                                             attributes:self.attDic context:nil];
    result = rect.size;
    
    return result;
}




@end
