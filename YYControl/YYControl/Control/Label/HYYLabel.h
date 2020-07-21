//
//  HYYLabel.h
//  YYControl
//
//  Created by 黄杨洋 on 2018/1/11.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#define HYYLabelShare [[HYYLabel alloc]init]

typedef void(^LabelClick)(UITapGestureRecognizer * _Nullable Gesture);

@interface HYYLabel :UILabel

///label的大小位置
@property (nonatomic, copy, readonly) HYYLabel *_Nullable(^ _Nonnull Frame)(CGRect  frame);
///label的背景颜色
@property (nonatomic, copy, readonly) HYYLabel *_Nullable(^ _Nonnull backColor)(UIColor * _Nonnull backgroundColor);
///label的文字
@property (nonatomic, copy, readonly) HYYLabel *_Nullable(^ _Nonnull Text)(NSString * _Nonnull text);
///label的文字颜色
@property (nonatomic, copy, readonly) HYYLabel *_Nullable(^ _Nonnull TextColor)(UIColor * _Nonnull textColor);
///label的字体和大小
@property (nonatomic, copy, readonly) HYYLabel *_Nullable(^ _Nonnull FontofSize)(UIFont * _Nonnull font);
///label的透明度
@property (nonatomic, copy, readonly) HYYLabel *_Nullable(^ _Nonnull Alpha)(float  alpha);
///label的圆角
@property (nonatomic, copy, readonly) HYYLabel *_Nullable(^ _Nonnull CornerRadius)(float cornerRadius);
///label边框宽度
@property (nonatomic, copy, readonly) HYYLabel *_Nullable(^ _Nonnull BorderWidth)(float borderWidth);
///label边框颜色
@property (nonatomic, copy, readonly) HYYLabel *_Nullable(^ _Nonnull BorderColor)(UIColor * _Nonnull borderColor);

///label的masksToBounds
@property (nonatomic, copy, readonly) HYYLabel *_Nullable(^ _Nonnull MasksToBounds)(BOOL masksToBounds);
///label的文字对齐方式
@property (nonatomic, copy, readonly) HYYLabel *_Nullable(^ _Nonnull TextAlignment)(NSTextAlignment textAlignment);
///label的tag
@property (nonatomic, copy, readonly) HYYLabel *_Nullable(^ _Nonnull Tag)(NSInteger tag);
///label的行间距
@property (nonatomic, copy, readonly) HYYLabel *_Nullable(^ _Nonnull LineSpace)(NSInteger  lineSpace);
///label的字间距
@property (nonatomic, copy, readonly) HYYLabel *_Nullable(^ _Nonnull WordSpace)(NSInteger  wordSpace);
///label的行数
@property (nonatomic, copy, readonly) HYYLabel *_Nullable(^ _Nonnull NumberOfLines)(NSInteger  numberOfLines);

///label自适应高度
@property (nonatomic, copy, readonly) HYYLabel *_Nullable(^ _Nonnull IsAdaptionHeight)(BOOL  isAdaptionHeight);

///label自适应高度
@property (nonatomic, copy, readonly) HYYLabel *_Nullable(^ _Nonnull IsAdaptionWidth)(BOOL  isAdaptionWidth);

///是否允许交互
@property (nonatomic, assign, readonly) HYYLabel *_Nullable(^ _Nonnull UserInteractionEnabled)(BOOL userInteractionEnabled);


///创建label
-(HYYLabel *_Nullable)createHYYLabel:(void(^_Nullable)(HYYLabel * _Nullable HYYLabel))label;


@property (nonatomic,copy) LabelClick _Nullable labelClick;


@end
