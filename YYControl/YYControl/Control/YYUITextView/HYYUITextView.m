//
//  HYYUITextView.m
//  YYControl
//
//  Created by 黄杨洋 on 2018/1/30.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import "HYYUITextView.h"

@interface HYYUITextView()

@property (nonatomic,strong) UIColor* placeColor;
@property (nonatomic,strong) UIFont *placeFont;
@property (nonatomic,strong) UILabel *placeHolderLabel;

@end

@implementation HYYUITextView

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

-(HYYUITextView * _Nullable (^)(CGRect))Frame{
    return ^ HYYUITextView *(CGRect rect) {
        self.frame = rect;
        return self;
    };
}

- (HYYUITextView * _Nullable (^)(NSString * _Nullable))Text{
    return ^ HYYUITextView *(NSString *text) {
        self.text = text;
        return self;
    };
}

-(HYYUITextView * _Nullable (^)(UIColor * _Nullable))BackgroundColor{
    return ^ HYYUITextView *(UIColor *color) {
        self.backgroundColor = color;
        return self;
    };
}


-(HYYUITextView * _Nullable (^)(UIColor * _Nullable))TextColor{
    return ^ HYYUITextView *(UIColor *color) {
        self.textColor = color;
        return self;
    };
}


-(HYYUITextView * _Nullable (^)(UIFont * _Nullable))Font{
    return ^ HYYUITextView *(UIFont *font) {
        self.font = font;
        return self;
    };
}


-(HYYUITextView * _Nullable (^)(NSTextAlignment))TextAlignment{
    return ^ HYYUITextView *(NSTextAlignment textAlgnment) {
        self.textAlignment = textAlgnment;
        return self;
    };
}

-(HYYUITextView * _Nullable (^)(NSString * _Nullable))Placeholder{
    return ^ HYYUITextView *(NSString *placeholder) {
        self.placeHolderLabel.text = placeholder;
        self.placeHolderLabel.font = [UIFont systemFontOfSize:15];
        /*
         [self setValue:(nullable id) forKey:(nonnull NSString *)]
         ps: KVC键值编码，对UITextView的私有属性进行修改
         */
        [self setValue:self.placeHolderLabel forKey:@"_placeholderLabel"];
        return self;
    };
}


-(HYYUITextView * _Nullable (^)(UIColor * _Nullable))placeholderColor{
    return ^ HYYUITextView *(UIColor *color) {
        self.placeHolderLabel.textColor = color;
        [self setValue:self.placeHolderLabel forKey:@"_placeholderLabel"];
        return self;
    };
}

-(HYYUITextView * _Nullable (^)(UIFont * _Nullable))PlaceholderFont{
    return ^ HYYUITextView *(UIFont *font) {
        self.placeHolderLabel.font = font;
        [self setValue:self.placeHolderLabel forKey:@"_placeholderLabel"];
        return self;
    };
}


-(HYYUITextView * _Nullable (^)(BOOL))Editable{
    return ^ HYYUITextView *(BOOL editable) {
        self.editable = editable;
        return self;
    };
}


-(HYYUITextView * _Nullable (^)(BOOL))Selectable{
    return ^ HYYUITextView *(BOOL selectable) {
        self.selectable = selectable;
        return self;
    };
}


-(HYYUITextView * _Nullable (^)(NSRange))SelectedRange{
    return ^ HYYUITextView *(NSRange selectedRange) {
        self.selectedRange = selectedRange;
        return self;
    };
}


-(HYYUITextView * _Nullable (^)(UIEdgeInsets))TextContainerInset{
    return ^ HYYUITextView *(UIEdgeInsets textContainerInset) {
        self.textContainerInset = textContainerInset;
        return self;
    };
}


-(HYYUITextView * _Nullable (^)(NSAttributedString * _Nullable))AttributedText{
    return ^ HYYUITextView *(NSAttributedString *attributedText) {
        self.attributedText = attributedText;
        return self;
    };
}

-(HYYUITextView * _Nullable (^)(UIReturnKeyType))ReturnKeyType{
    return ^ HYYUITextView *(UIReturnKeyType returnKeyType) {
        self.returnKeyType = returnKeyType;
        return self;
    };
}


-(HYYUITextView * _Nullable (^)(UIKeyboardType))KeyboardType{
    return ^ HYYUITextView *(UIKeyboardType keyboardType) {
        self.keyboardType = keyboardType;
        return self;
    };
}


-(HYYUITextView * _Nullable (^)(float))Alpha{
    return ^ HYYUITextView* (float alpha) {
        self.alpha = alpha;
        return self;
    };
}

-(HYYUITextView * _Nullable (^)(float))CornerRadius{
    return ^ HYYUITextView* (float cornerRadius) {
        self.layer.cornerRadius = cornerRadius;
        return self;
    };
}


-(HYYUITextView * _Nullable (^)(float))BorderWidth{
    return ^ HYYUITextView* (float borderWidth) {
        self.layer.borderWidth = borderWidth;
        return self;
    };
}

-(HYYUITextView * _Nullable (^)(UIColor * _Nonnull))BorderColor{
    return ^ HYYUITextView *(UIColor *borderColor) {
        self.layer.borderColor = borderColor.CGColor;
        return self;
    };
}



-(HYYUITextView * _Nullable (^)(BOOL))MasksToBounds{
    return ^ HYYUITextView *(BOOL masksToBounds) {
        self.layer.masksToBounds = masksToBounds;
        return self;
    };
}



-(HYYUITextView *)createHYYUITextView:(void (^)(HYYUITextView * _Nullable))textView{
    textView(self);
    return self;
}

@end
