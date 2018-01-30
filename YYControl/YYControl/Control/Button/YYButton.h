//
//  YYButton.h
//  YYControl
//
//  Created by 黄杨洋 on 2018/1/11.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


#define YYButtonShare [[YYButton alloc]init]

@interface YYButton : UIButton

///按钮的大小位置
@property (nonatomic, copy, readonly) YYButton *_Nullable(^ _Nonnull Frame)(CGRect  frame);
///按钮的背景颜色
@property (nonatomic, copy, readonly) YYButton *_Nullable(^ _Nonnull BackgroundColor)(UIColor * _Nonnull backgroundColor);
///按钮的文字
@property (nonatomic, copy, readonly) YYButton *_Nullable(^ _Nonnull Text)(NSString * _Nonnull text);
///按钮的文字颜色
@property (nonatomic, copy, readonly) YYButton *_Nullable(^ _Nonnull TextColor)(UIColor * _Nonnull textColor);
///按钮的字体和大小
@property (nonatomic, copy, readonly) YYButton *_Nullable(^ _Nonnull FontofSize)(UIFont * _Nonnull font);
///按钮的透明度
@property (nonatomic, copy, readonly) YYButton *_Nullable(^ _Nonnull Alpha)(float  alpha);
///按钮的圆角
@property (nonatomic, copy, readonly) YYButton *_Nullable(^ _Nonnull CornerRadius)(float cornerRadius);
///按钮边框宽度
@property (nonatomic, copy, readonly) YYButton *_Nullable(^ _Nonnull BorderWidth)(float borderWidth);
///按钮边框颜色
@property (nonatomic, copy, readonly) YYButton *_Nullable(^ _Nonnull BorderColor)(UIColor * _Nonnull borderColor);
///按钮设置图片
@property (nonatomic, copy, readonly) YYButton *_Nullable(^ _Nonnull SetImage)(NSString * _Nonnull setImageName);
///按钮的masksToBounds
@property (nonatomic, copy, readonly) YYButton *_Nullable(^ _Nonnull MasksToBounds)(BOOL masksToBounds);
///按钮图片偏移
@property (nonatomic, copy, readonly) YYButton *_Nullable(^ _Nonnull ImageEdges)(UIEdgeInsets imageEdges);
///按钮的tag
@property (nonatomic, copy, readonly) YYButton *_Nullable(^ _Nonnull Tag)(NSInteger tag);


///创建按钮  带点击事件的创建
-(YYButton *_Nullable)createYYButton:(void(^_Nullable)(YYButton * _Nullable button))button YYButtonClick:(void (^_Nullable)(UIButton * _Nullable sender)) yybuttonClick;

///创建按钮  不带点击事件的创建
-(YYButton *_Nullable)createYYButton:(void(^_Nullable)(YYButton * _Nullable button))button;




@end
