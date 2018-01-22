//
//  YYLabel.h
//  YYControl
//
//  Created by 黄杨洋 on 2018/1/11.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#define YYLabelShare [[YYLabel alloc]init]

@interface YYLabel :UILabel

///label的大小位置
@property (nonatomic, copy, readonly) YYLabel *_Nullable(^ _Nonnull Frame)(CGRect  frame);
///label的背景颜色
@property (nonatomic, copy, readonly) YYLabel *_Nullable(^ _Nonnull backColor)(UIColor * _Nonnull backgroundColor);
///label的文字
@property (nonatomic, copy, readonly) YYLabel *_Nullable(^ _Nonnull Text)(NSString * _Nonnull text);
///label的文字颜色
@property (nonatomic, copy, readonly) YYLabel *_Nullable(^ _Nonnull TextColor)(UIColor * _Nonnull textColor);
///label的字体和大小
@property (nonatomic, copy, readonly) YYLabel *_Nullable(^ _Nonnull FontofSize)(UIFont * _Nonnull font);
///label的透明度
@property (nonatomic, copy, readonly) YYLabel *_Nullable(^ _Nonnull Alpha)(float  alpha);
///label的圆角
@property (nonatomic, copy, readonly) YYLabel *_Nullable(^ _Nonnull CornerRadius)(float cornerRadius);
///label边框宽度
@property (nonatomic, copy, readonly) YYLabel *_Nullable(^ _Nonnull BorderWidth)(float borderWidth);
///label边框颜色
@property (nonatomic, copy, readonly) YYLabel *_Nullable(^ _Nonnull BorderColor)(UIColor * _Nonnull borderColor);

///label的masksToBounds
@property (nonatomic, copy, readonly) YYLabel *_Nullable(^ _Nonnull MasksToBounds)(BOOL masksToBounds);
///label的文字对齐方式
@property (nonatomic, copy, readonly) YYLabel *_Nullable(^ _Nonnull TextAlignment)(NSTextAlignment textAlignment);
///label的tag
@property (nonatomic, copy, readonly) YYLabel *_Nullable(^ _Nonnull Tag)(NSInteger tag);
///label的行间距
@property (nonatomic, copy, readonly) YYLabel *_Nullable(^ _Nonnull LineSpace)(NSInteger  lineSpace);
///label的字间距
@property (nonatomic, copy, readonly) YYLabel *_Nullable(^ _Nonnull WordSpace)(NSInteger  wordSpace);
///label的行数
@property (nonatomic, copy, readonly) YYLabel *_Nullable(^ _Nonnull NumberOfLines)(NSInteger  numberOfLines);


///创建label
-(YYLabel *_Nullable)createYYLabel:(void(^_Nullable)(YYLabel * _Nullable yyLabel))label;


@end
