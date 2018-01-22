//
//  YYTextField.h
//  YYControl
//
//  Created by 黄杨洋 on 2018/1/22.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>


#define YYTextFieldShare [[YYTextField alloc]init]

@interface YYTextField : UITextField

///输入框的大小位置
@property (nonatomic, copy, readonly) YYTextField *_Nullable(^ _Nonnull Frame)(CGRect  frame);

///输入框文字
@property (nonatomic, copy, readonly) YYTextField *_Nullable(^ _Nonnull Text)(NSString * _Nullable text);

///输入框的文字颜色
@property (nonatomic, copy, readonly) YYTextField *_Nullable(^ _Nonnull TextColor)(UIColor * _Nullable textColor);

///输入框的背景颜色
@property (nonatomic, copy, readonly) YYTextField *_Nullable(^ _Nonnull BackgroundColor)(UIColor * _Nullable backgroundColor);

///输入框的字体大小
@property (nonatomic, copy, readonly) YYTextField *_Nullable(^ _Nonnull Font)(UIFont * _Nullable font);

///输入框位置
@property (nonatomic, copy, readonly) YYTextField *_Nullable(^ _Nonnull TextAlignment)(NSTextAlignment  textAlignment);

///输入框密文显示
@property (nonatomic, copy, readonly) YYTextField *_Nullable(^ _Nonnull SecureTextEntry)(BOOL  secureTextEntry);

///输入框的占位文字
@property (nonatomic, copy, readonly) YYTextField *_Nullable(^ _Nonnull Placeholder)(NSString * _Nullable placeholder);

///输入框的占位文字大小
@property (nonatomic, copy, readonly) YYTextField *_Nullable(^ _Nonnull PlaceholderFont)(UIFont * _Nullable placeholderFont);

///输入框的占位文字颜色
@property (nonatomic, copy, readonly) YYTextField *_Nullable(^ _Nonnull placeholderColor)(UIColor * _Nullable placeholderColor);

///输入框是否在开始编辑的时候清空文字
@property (nonatomic, copy, readonly) YYTextField *_Nullable(^ _Nonnull ClearsOnBeginEditing)(BOOL  clearsOnBeginEditing);

///输入框边框风格
@property (nonatomic, copy, readonly) YYTextField *_Nullable(^ _Nonnull BorderStyle)(UITextBorderStyle  BorderStyle);

///输入框左视图
@property (nonatomic, copy, readonly) YYTextField *_Nullable(^ _Nonnull LeftView)(UIView * _Nullable leftView);

///输入框左视图模式
@property (nonatomic, copy, readonly) YYTextField *_Nullable(^ _Nonnull LeftViewMode)(UITextFieldViewMode  leftViewMode);

///输入框自定制键盘
@property (nonatomic, copy, readonly) YYTextField *_Nullable(^ _Nonnull InputView)(UIView * _Nullable InputView);

///只有在 UITextBorderStyleNone 样式下，设置背景图才会生效，且图片大小小于 text 的frame时，图片会拉伸
@property (nonatomic, copy, readonly) YYTextField *_Nullable(^ _Nonnull BackgroundImage)(NSString * _Nullable backgroundimage);

///输入框中是否有个叉号，在什么时候显示，用于一次性删除输入框中的内容
@property (nonatomic, copy, readonly) YYTextField *_Nullable(^ _Nonnull ClearButtonMode)(UITextFieldViewMode clearButtonMode);

///输入框设置键盘的样式
@property (nonatomic, copy, readonly) YYTextField *_Nullable(^ _Nonnull KeyboardType)(UIKeyboardType keyboardType);

///输入框首字母是否大写
@property (nonatomic, copy, readonly) YYTextField *_Nullable(^ _Nonnull AutocapitalizationType)(BOOL autocapitalizationType);

///输入框return键变成什么键
@property (nonatomic, copy, readonly) YYTextField *_Nullable(^ _Nonnull ReturnKeyType)(UIReturnKeyType returnKeyType);


///输入框的透明度
@property (nonatomic, copy, readonly) YYTextField *_Nullable(^ _Nonnull Alpha)(float  alpha);
///输入框的圆角
@property (nonatomic, copy, readonly) YYTextField *_Nullable(^ _Nonnull CornerRadius)(float cornerRadius);
///输入框边框宽度
@property (nonatomic, copy, readonly) YYTextField *_Nullable(^ _Nonnull BorderWidth)(float borderWidth);
///输入框边框颜色
@property (nonatomic, copy, readonly) YYTextField *_Nullable(^ _Nonnull BorderColor)(UIColor * _Nonnull borderColor);

///输入框的masksToBounds
@property (nonatomic, copy, readonly) YYTextField *_Nullable(^ _Nonnull MasksToBounds)(BOOL masksToBounds);

///输入框的左边距
@property (nonatomic, copy, readonly) YYTextField *_Nullable(^ _Nonnull leftSpace)(NSInteger leftSpace);




///创建输入框
-(YYTextField *_Nullable)createYYTextField:(void(^_Nullable)(YYTextField * _Nullable yyTextFiled))textFiled;





@end
