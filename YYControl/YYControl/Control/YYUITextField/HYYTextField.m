//
//  HYYTextField.m
//  YYControl
//
//  Created by 黄杨洋 on 2018/1/22.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import "HYYTextField.h"

@interface HYYTextField ()

@property (nonatomic,strong) UILabel *placeHolderLabel;

@end

@implementation HYYTextField

-(UILabel *)placeHolderLabel{
    if (!_placeHolderLabel) {
        //_placeHolderLabel默认属性
        _placeHolderLabel = [[UILabel alloc]init];
        _placeHolderLabel.numberOfLines = 0;
        [_placeHolderLabel sizeToFit];
        _placeHolderLabel.textColor = [UIColor grayColor];
        [self addSubview:_placeHolderLabel];
    }
    return _placeHolderLabel;
}

-(HYYTextField * _Nullable (^)(CGRect))Frame{
    return ^ HYYTextField *(CGRect rect) {
        self.frame = rect;
        return self;
    };
}

- (HYYTextField * _Nullable (^)(NSString * _Nullable))Text{
    return ^ HYYTextField *(NSString *text) {
        self.text = text;
        return self;
    };
}

-(HYYTextField * _Nullable (^)(UIColor * _Nullable))BackgroundColor{
    return ^ HYYTextField *(UIColor *color) {
        self.backgroundColor = color;
        return self;
    };
}

-(HYYTextField * _Nullable (^)(NSString * _Nullable))BackgroundImage{
    return ^ HYYTextField *(NSString *imagename) {
        self.background = [UIImage imageNamed:imagename];
        return self;
    };
}


-(HYYTextField * _Nullable (^)(UIColor * _Nullable))TextColor{
    return ^ HYYTextField *(UIColor *color) {
        self.textColor = color;
        return self;
    };
}


-(HYYTextField * _Nullable (^)(UIFont * _Nullable))Font{
    return ^ HYYTextField *(UIFont *font) {
        self.font = font;
        return self;
    };
}


-(HYYTextField * _Nullable (^)(NSTextAlignment))TextAlignment{
    return ^ HYYTextField *(NSTextAlignment textAlgnment) {
        self.textAlignment = textAlgnment;
        return self;
    };
}

-(HYYTextField * _Nullable (^)(NSString * _Nullable))Placeholder{
    return ^ HYYTextField *(NSString *placeholder) {
        self.placeholder = placeholder;
        return self;
    };
}


-(HYYTextField * _Nullable (^)(UIColor * _Nullable))placeholderColor{
    return ^ HYYTextField *(UIColor *color) {
        self.placeHolderLabel.textColor = color;
        [self drawPlaceholderInRect:self.frame];
        return self;
    };
}

-(HYYTextField * _Nullable (^)(UIFont * _Nullable))PlaceholderFont{
    return ^ HYYTextField *(UIFont *font) {
        self.placeHolderLabel.font = font;
        [self drawPlaceholderInRect:self.frame];
        return self;
    };
}

-(HYYTextField * _Nullable (^)(BOOL))SecureTextEntry{
    return ^ HYYTextField *(BOOL secureTextEntry) {
        self.secureTextEntry = secureTextEntry;
        return self;
    };
}

-(HYYTextField * _Nullable (^)(BOOL))ClearsOnBeginEditing{
    return ^ HYYTextField *(BOOL clearsOnBeginEditing) {
        self.clearsOnBeginEditing = clearsOnBeginEditing;
        return self;
    };
}

-(HYYTextField * _Nullable (^)(UITextBorderStyle))BorderStyle{
    return ^ HYYTextField *(UITextBorderStyle borderStyle) {
        self.borderStyle = borderStyle;
        return self;
    };
}


-(HYYTextField * _Nullable (^)(UIView * _Nullable))LeftView{
    return ^ HYYTextField *(UIView *leftview) {
        self.leftView = leftview;
        return self;
    };
}

-(HYYTextField * _Nullable (^)(UITextFieldViewMode))LeftViewMode{
    return ^ HYYTextField *(UITextFieldViewMode leftViewMode) {
        self.leftViewMode = leftViewMode;
        return self;
    };
}

-(HYYTextField * _Nullable (^)(UIView * _Nullable))InputView{
    return ^ HYYTextField *(UIView *inputView) {
        self.inputView = inputView;
        return self;
    };
}

-(HYYTextField * _Nullable (^)(UITextFieldViewMode))ClearButtonMode{
    return ^ HYYTextField *(UITextFieldViewMode clearButtonMode) {
        self.clearButtonMode = clearButtonMode;
        return self;
    };
}


-(HYYTextField * _Nullable (^)(UIKeyboardType))KeyboardType{
    return ^ HYYTextField *(UIKeyboardType keyboardType) {
        self.keyboardType = keyboardType;
        return self;
    };
}


-(HYYTextField * _Nullable (^)(BOOL))AutocapitalizationType{
    return ^ HYYTextField *(BOOL autocapitalizationType) {
        self.autocapitalizationType = autocapitalizationType;
        return self;
    };
}


-(HYYTextField * _Nullable (^)(UIReturnKeyType))ReturnKeyType{
    return ^ HYYTextField *(UIReturnKeyType returnKeyType) {
        self.returnKeyType = returnKeyType;
        return self;
    };
}



-(HYYTextField * _Nullable (^)(float))Alpha{
    return ^ HYYTextField* (float alpha) {
        self.alpha = alpha;
        return self;
    };
}

-(HYYTextField * _Nullable (^)(float))CornerRadius{
    return ^ HYYTextField* (float cornerRadius) {
        self.layer.cornerRadius = cornerRadius;
        return self;
    };
}


-(HYYTextField * _Nullable (^)(float))BorderWidth{
    return ^ HYYTextField* (float borderWidth) {
        self.layer.borderWidth = borderWidth;
        return self;
    };
}

-(HYYTextField * _Nullable (^)(UIColor * _Nonnull))BorderColor{
    return ^ HYYTextField *(UIColor *borderColor) {
        self.layer.borderColor = borderColor.CGColor;
        return self;
    };
}



-(HYYTextField * _Nullable (^)(BOOL))MasksToBounds{
    return ^ HYYTextField *(BOOL masksToBounds) {
        self.layer.masksToBounds = masksToBounds;
        return self;
    };
}


-(HYYTextField * _Nullable (^)(NSInteger))leftSpace{
    return ^ HYYTextField *(NSInteger leftSpace) {
        self.leftView=[[UIView alloc]initWithFrame:CGRectMake(0, 0, leftSpace, 0)];
        return self;
    };
}


-(HYYTextField *)createHYYTextField:(void (^)(HYYTextField * _Nullable))textFiled{
    textFiled(self);
    return  self;
}







#pragma mmark - placeholder文字颜色字体修改
-(void)drawPlaceholderInRect:(CGRect)rect {
    
    // 计算占位文字的 Size
    CGSize placeholderSize = [self.placeholder sizeWithAttributes: @{NSFontAttributeName : self.placeHolderLabel.font}];
    
    [self.placeholder drawInRect:CGRectMake(0, (rect.size.height - placeholderSize.height)/2, rect.size.width, rect.size.height) withAttributes:@{NSForegroundColorAttributeName : self.placeHolderLabel.textColor,NSFontAttributeName : self.placeHolderLabel.font}];
    
}


@end
