//
//  YYTextField.m
//  YYControl
//
//  Created by 黄杨洋 on 2018/1/22.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import "YYTextField.h"

@implementation YYTextField

-(YYTextField * _Nullable (^)(CGRect))Frame{
    return ^ YYTextField *(CGRect rect) {
        self.frame = rect;
        return self;
    };
}

- (YYTextField * _Nullable (^)(NSString * _Nullable))Text{
    return ^ YYTextField *(NSString *text) {
        self.text = text;
        return self;
    };
}

-(YYTextField * _Nullable (^)(UIColor * _Nullable))BackgroundColor{
    return ^ YYTextField *(UIColor *color) {
        self.backgroundColor = color;
        return self;
    };
}

-(YYTextField * _Nullable (^)(NSString * _Nullable))BackgroundImage{
    return ^ YYTextField *(NSString *imagename) {
        self.background = [UIImage imageNamed:imagename];
        return self;
    };
}


-(YYTextField * _Nullable (^)(UIColor * _Nullable))TextColor{
    return ^ YYTextField *(UIColor *color) {
        self.textColor = color;
        return self;
    };
}


-(YYTextField * _Nullable (^)(UIFont * _Nullable))Font{
    return ^ YYTextField *(UIFont *font) {
        self.font = font;
        return self;
    };
}


-(YYTextField * _Nullable (^)(NSTextAlignment))TextAlignment{
    return ^ YYTextField *(NSTextAlignment textAlgnment) {
        self.textAlignment = textAlgnment;
        return self;
    };
}

-(YYTextField * _Nullable (^)(NSString * _Nullable))Placeholder{
    return ^ YYTextField *(NSString *placeholder) {
        self.placeholder = placeholder;
        return self;
    };
}


-(YYTextField * _Nullable (^)(UIColor * _Nullable))placeholderColor{
    return ^ YYTextField *(UIColor *color) {
        [self setValue:color forKeyPath:@"_placeholderLabel.textColor"];
        return self;
    };
}

-(YYTextField * _Nullable (^)(UIFont * _Nullable))PlaceholderFont{
    return ^ YYTextField *(UIFont *font) {
        [self setValue:font forKeyPath:@"_placeholderLabel.font"];
        return self;
    };
}

-(YYTextField * _Nullable (^)(BOOL))SecureTextEntry{
    return ^ YYTextField *(BOOL secureTextEntry) {
        self.secureTextEntry = secureTextEntry;
        return self;
    };
}

-(YYTextField * _Nullable (^)(BOOL))ClearsOnBeginEditing{
    return ^ YYTextField *(BOOL clearsOnBeginEditing) {
        self.clearsOnBeginEditing = clearsOnBeginEditing;
        return self;
    };
}

-(YYTextField * _Nullable (^)(UITextBorderStyle))BorderStyle{
    return ^ YYTextField *(UITextBorderStyle borderStyle) {
        self.borderStyle = borderStyle;
        return self;
    };
}


-(YYTextField * _Nullable (^)(UIView * _Nullable))LeftView{
    return ^ YYTextField *(UIView *leftview) {
        self.leftView = leftview;
        return self;
    };
}

-(YYTextField * _Nullable (^)(UITextFieldViewMode))LeftViewMode{
    return ^ YYTextField *(UITextFieldViewMode leftViewMode) {
        self.leftViewMode = leftViewMode;
        return self;
    };
}

-(YYTextField * _Nullable (^)(UIView * _Nullable))InputView{
    return ^ YYTextField *(UIView *inputView) {
        self.inputView = inputView;
        return self;
    };
}

-(YYTextField * _Nullable (^)(UITextFieldViewMode))ClearButtonMode{
    return ^ YYTextField *(UITextFieldViewMode clearButtonMode) {
        self.clearButtonMode = clearButtonMode;
        return self;
    };
}


-(YYTextField * _Nullable (^)(UIKeyboardType))KeyboardType{
    return ^ YYTextField *(UIKeyboardType keyboardType) {
        self.keyboardType = keyboardType;
        return self;
    };
}


-(YYTextField * _Nullable (^)(BOOL))AutocapitalizationType{
    return ^ YYTextField *(BOOL autocapitalizationType) {
        self.autocapitalizationType = autocapitalizationType;
        return self;
    };
}


-(YYTextField * _Nullable (^)(UIReturnKeyType))ReturnKeyType{
    return ^ YYTextField *(UIReturnKeyType returnKeyType) {
        self.returnKeyType = returnKeyType;
        return self;
    };
}



-(YYTextField * _Nullable (^)(float))Alpha{
    return ^ YYTextField* (float alpha) {
        self.alpha = alpha;
        return self;
    };
}

-(YYTextField * _Nullable (^)(float))CornerRadius{
    return ^ YYTextField* (float cornerRadius) {
        self.layer.cornerRadius = cornerRadius;
        return self;
    };
}


-(YYTextField * _Nullable (^)(float))BorderWidth{
    return ^ YYTextField* (float borderWidth) {
        self.layer.borderWidth = borderWidth;
        return self;
    };
}

-(YYTextField * _Nullable (^)(UIColor * _Nonnull))BorderColor{
    return ^ YYTextField *(UIColor *borderColor) {
        self.layer.borderColor = borderColor.CGColor;
        return self;
    };
}



-(YYTextField * _Nullable (^)(BOOL))MasksToBounds{
    return ^ YYTextField *(BOOL masksToBounds) {
        self.layer.masksToBounds = masksToBounds;
        return self;
    };
}


-(YYTextField * _Nullable (^)(NSInteger))leftSpace{
    return ^ YYTextField *(NSInteger leftSpace) {
        self.leftView=[[UIView alloc]initWithFrame:CGRectMake(0, 0, leftSpace, 0)];
        return self;
    };
}


-(YYTextField *)createYYTextField:(void (^)(YYTextField * _Nullable))textFiled{
    textFiled(self);
    return  self;
}








@end
