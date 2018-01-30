//
//  YYUITextView.m
//  YYControl
//
//  Created by 黄杨洋 on 2018/1/30.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import "YYUITextView.h"

@interface YYUITextView()

@property (nonatomic,strong) UIColor* placeColor;
@property (nonatomic,strong) UIFont *placeFont;
@property (nonatomic,strong) UILabel *placeHolderLabel;

@end

@implementation YYUITextView

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

-(YYUITextView * _Nullable (^)(CGRect))Frame{
    return ^ YYUITextView *(CGRect rect) {
        self.frame = rect;
        return self;
    };
}

- (YYUITextView * _Nullable (^)(NSString * _Nullable))Text{
    return ^ YYUITextView *(NSString *text) {
        self.text = text;
        return self;
    };
}

-(YYUITextView * _Nullable (^)(UIColor * _Nullable))BackgroundColor{
    return ^ YYUITextView *(UIColor *color) {
        self.backgroundColor = color;
        return self;
    };
}


-(YYUITextView * _Nullable (^)(UIColor * _Nullable))TextColor{
    return ^ YYUITextView *(UIColor *color) {
        self.textColor = color;
        return self;
    };
}


-(YYUITextView * _Nullable (^)(UIFont * _Nullable))Font{
    return ^ YYUITextView *(UIFont *font) {
        self.font = font;
        return self;
    };
}


-(YYUITextView * _Nullable (^)(NSTextAlignment))TextAlignment{
    return ^ YYUITextView *(NSTextAlignment textAlgnment) {
        self.textAlignment = textAlgnment;
        return self;
    };
}

-(YYUITextView * _Nullable (^)(NSString * _Nullable))Placeholder{
    return ^ YYUITextView *(NSString *placeholder) {
        self.placeHolderLabel.text = placeholder;
        self.placeHolderLabel.font = [UIFont systemFontOfSize:15];
        /*
         [self setValue:(nullable id) forKey:(nonnull NSString *)]
         ps: KVC键值编码，对UITextView的私有属性进行修改
         */
        [self setValue:_placeHolderLabel forKey:@"_placeholderLabel"];
        return self;
    };
}


-(YYUITextView * _Nullable (^)(UIColor * _Nullable))placeholderColor{
    return ^ YYUITextView *(UIColor *color) {
        self.placeHolderLabel.textColor = color;
        [self setValue:_placeHolderLabel forKey:@"_placeholderLabel"];
        return self;
    };
}

-(YYUITextView * _Nullable (^)(UIFont * _Nullable))PlaceholderFont{
    return ^ YYUITextView *(UIFont *font) {
        self.placeHolderLabel.font = font;
        [self setValue:_placeHolderLabel forKey:@"_placeholderLabel"];
        return self;
    };
}


-(YYUITextView * _Nullable (^)(BOOL))Editable{
    return ^ YYUITextView *(BOOL editable) {
        self.editable = editable;
        return self;
    };
}


-(YYUITextView * _Nullable (^)(BOOL))Selectable{
    return ^ YYUITextView *(BOOL selectable) {
        self.selectable = selectable;
        return self;
    };
}


-(YYUITextView * _Nullable (^)(NSRange))SelectedRange{
    return ^ YYUITextView *(NSRange selectedRange) {
        self.selectedRange = selectedRange;
        return self;
    };
}


-(YYUITextView * _Nullable (^)(UIEdgeInsets))TextContainerInset{
    return ^ YYUITextView *(UIEdgeInsets textContainerInset) {
        self.textContainerInset = textContainerInset;
        return self;
    };
}


-(YYUITextView * _Nullable (^)(NSAttributedString * _Nullable))AttributedText{
    return ^ YYUITextView *(NSAttributedString *attributedText) {
        self.attributedText = attributedText;
        return self;
    };
}

-(YYUITextView * _Nullable (^)(UIReturnKeyType))ReturnKeyType{
    return ^ YYUITextView *(UIReturnKeyType returnKeyType) {
        self.returnKeyType = returnKeyType;
        return self;
    };
}


-(YYUITextView * _Nullable (^)(UIKeyboardType))KeyboardType{
    return ^ YYUITextView *(UIKeyboardType keyboardType) {
        self.keyboardType = keyboardType;
        return self;
    };
}


-(YYUITextView * _Nullable (^)(float))Alpha{
    return ^ YYUITextView* (float alpha) {
        self.alpha = alpha;
        return self;
    };
}

-(YYUITextView * _Nullable (^)(float))CornerRadius{
    return ^ YYUITextView* (float cornerRadius) {
        self.layer.cornerRadius = cornerRadius;
        return self;
    };
}


-(YYUITextView * _Nullable (^)(float))BorderWidth{
    return ^ YYUITextView* (float borderWidth) {
        self.layer.borderWidth = borderWidth;
        return self;
    };
}

-(YYUITextView * _Nullable (^)(UIColor * _Nonnull))BorderColor{
    return ^ YYUITextView *(UIColor *borderColor) {
        self.layer.borderColor = borderColor.CGColor;
        return self;
    };
}



-(YYUITextView * _Nullable (^)(BOOL))MasksToBounds{
    return ^ YYUITextView *(BOOL masksToBounds) {
        self.layer.masksToBounds = masksToBounds;
        return self;
    };
}



-(YYUITextView *)createYYUITextView:(void (^)(YYUITextView * _Nullable))textView{
    textView(self);
    return self;
}

@end
