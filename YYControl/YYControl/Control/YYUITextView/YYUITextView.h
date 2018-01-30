//
//  YYUITextView.h
//  YYControl
//
//  Created by 黄杨洋 on 2018/1/30.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>

#define YYTextViewShare [[YYUITextView alloc]init]

@interface YYUITextView : UITextView

///TextView的大小位置
@property (nonatomic, copy, readonly) YYUITextView *_Nullable(^ _Nonnull Frame)(CGRect  frame);

///TextView文字
@property (nonatomic, copy, readonly) YYUITextView *_Nullable(^ _Nonnull Text)(NSString * _Nullable text);

///TextView的文字颜色
@property (nonatomic, copy, readonly) YYUITextView *_Nullable(^ _Nonnull TextColor)(UIColor * _Nullable textColor);

///TextView的背景颜色
@property (nonatomic, copy, readonly) YYUITextView *_Nullable(^ _Nonnull BackgroundColor)(UIColor * _Nullable backgroundColor);

///TextView的字体大小
@property (nonatomic, copy, readonly) YYUITextView *_Nullable(^ _Nonnull Font)(UIFont * _Nullable font);

///TextView位置
@property (nonatomic, copy, readonly) YYUITextView *_Nullable(^ _Nonnull TextAlignment)(NSTextAlignment  textAlignment);

///TextView的占位文字
@property (nonatomic, copy, readonly) YYUITextView *_Nullable(^ _Nonnull Placeholder)(NSString * _Nullable placeholder);

///TextView的占位文字大小
@property (nonatomic, copy, readonly) YYUITextView *_Nullable(^ _Nonnull PlaceholderFont)(UIFont * _Nullable placeholderFont);

///TextView的占位文字颜色
@property (nonatomic, copy, readonly) YYUITextView *_Nullable(^ _Nonnull placeholderColor)(UIColor * _Nullable placeholderColor);

///TextView是否可编辑
@property (nonatomic, copy, readonly) YYUITextView *_Nullable(^ _Nonnull Editable)(BOOL editable);

///TextView是否可选中
@property (nonatomic, copy, readonly) YYUITextView *_Nullable(^ _Nonnull Selectable)(BOOL selectable);

///TextView选中范围
@property (nonatomic, copy, readonly) YYUITextView *_Nullable(^ _Nonnull SelectedRange)(NSRange selectedRange);

///TextView选中范围
@property (nonatomic, copy, readonly) YYUITextView *_Nullable(^ _Nonnull TextContainerInset)(UIEdgeInsets textContainerInset);

///TextView选中范围
@property (nonatomic, copy, readonly) YYUITextView *_Nullable(^ _Nonnull AttributedText)(NSAttributedString * _Nullable attributedText);


///TextView return键类型
@property (nonatomic, copy, readonly) YYUITextView *_Nullable(^ _Nonnull ReturnKeyType)(UIReturnKeyType returnKeyType);

///键盘类型
@property (nonatomic, copy, readonly) YYUITextView *_Nullable(^ _Nonnull KeyboardType)(UIKeyboardType keyboardType);

///TextView的透明度
@property (nonatomic, copy, readonly) YYUITextView *_Nullable(^ _Nonnull Alpha)(float  alpha);
///TextView的圆角
@property (nonatomic, copy, readonly) YYUITextView *_Nullable(^ _Nonnull CornerRadius)(float cornerRadius);
///TextView边框宽度
@property (nonatomic, copy, readonly) YYUITextView *_Nullable(^ _Nonnull BorderWidth)(float borderWidth);
///TextView边框颜色
@property (nonatomic, copy, readonly) YYUITextView *_Nullable(^ _Nonnull BorderColor)(UIColor * _Nonnull borderColor);

///TextView的masksToBounds
@property (nonatomic, copy, readonly) YYUITextView *_Nullable(^ _Nonnull MasksToBounds)(BOOL masksToBounds);


///创建TextView
-(YYUITextView *_Nullable)createYYUITextView:(void(^_Nullable)(YYUITextView * _Nullable TextView))textView;





@end
