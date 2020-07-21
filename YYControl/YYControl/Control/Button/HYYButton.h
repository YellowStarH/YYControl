//
//  HYYButton.h
//  YYControl
//
//  Created by 黄杨洋 on 2018/1/11.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


#define HYYButtonShare [[HYYButton alloc]init]


typedef void(^HYYButtonClickBlock)(UIButton* _Nullable sender);



@interface HYYButton : UIButton

///按钮的大小位置
@property (nonatomic, copy, readonly) HYYButton *_Nullable(^ _Nonnull Frame)(CGRect  frame);
///按钮的背景颜色
@property (nonatomic, copy, readonly) HYYButton *_Nullable(^ _Nonnull BackgroundColor)(UIColor * _Nonnull backgroundColor);
///按钮的文字
@property (nonatomic, copy, readonly) HYYButton *_Nullable(^ _Nonnull Text)(NSString * _Nonnull text);
///按钮的文字颜色
@property (nonatomic, copy, readonly) HYYButton *_Nullable(^ _Nonnull TextColor)(UIColor * _Nonnull textColor);
///按钮的字体和大小
@property (nonatomic, copy, readonly) HYYButton *_Nullable(^ _Nonnull FontofSize)(UIFont * _Nonnull font);
///按钮的透明度
@property (nonatomic, copy, readonly) HYYButton *_Nullable(^ _Nonnull Alpha)(float  alpha);
///按钮的圆角
@property (nonatomic, copy, readonly) HYYButton *_Nullable(^ _Nonnull CornerRadius)(float cornerRadius);
///按钮边框宽度
@property (nonatomic, copy, readonly) HYYButton *_Nullable(^ _Nonnull BorderWidth)(float borderWidth);
///按钮边框颜色
@property (nonatomic, copy, readonly) HYYButton *_Nullable(^ _Nonnull BorderColor)(UIColor * _Nonnull borderColor);
///按钮设置图片
@property (nonatomic, copy, readonly) HYYButton *_Nullable(^ _Nonnull SetImage)(NSString * _Nonnull setImageName);
///按钮的masksToBounds
@property (nonatomic, copy, readonly) HYYButton *_Nullable(^ _Nonnull MasksToBounds)(BOOL masksToBounds);
///按钮图片偏移
@property (nonatomic, copy, readonly) HYYButton *_Nullable(^ _Nonnull ImageEdges)(UIEdgeInsets imageEdges);
///按钮的tag
@property (nonatomic, copy, readonly) HYYButton *_Nullable(^ _Nonnull Tag)(NSInteger tag);


@property (nonatomic,copy) HYYButtonClickBlock _Nullable hyyButtonClickBlock;



///创建按钮  带点击事件的创建
-(HYYButton *_Nullable)createHYYButton:(void(^_Nullable)(HYYButton * _Nullable button))button HYYButtonClick:(void (^_Nullable)(UIButton * _Nullable sender)) HYYButtonClick;

///创建按钮  不带点击事件的创建
-(HYYButton *_Nullable)createHYYButton:(void(^_Nullable)(HYYButton * _Nullable button))button;




@end
