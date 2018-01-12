//
//  YYImage.h
//  YYControl
//
//  Created by 黄杨洋 on 2018/1/11.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#define YYImageViewShare [[YYImageView alloc]init]

@interface YYImageView :UIImageView

///图片的大小位置
@property (nonatomic, copy, readonly) YYImageView *_Nullable(^ _Nonnull Frame)(CGRect  frame);
///设置图片
@property (nonatomic, copy, readonly) YYImageView *_Nullable(^ _Nonnull SetImage)(NSString * _Nonnull setImagename);
///图片的背景颜色
@property (nonatomic, copy, readonly) YYImageView *_Nullable(^ _Nonnull BackgroundColor)(UIColor * _Nonnull backgroundColor);
///图片的透明度
@property (nonatomic, copy, readonly) YYImageView *_Nullable(^ _Nonnull Alpha)(float  alpha);
///图片的masksToBounds
@property (nonatomic, copy, readonly) YYImageView *_Nullable(^ _Nonnull MasksToBounds)(BOOL masksToBounds);
///图片的圆角
@property (nonatomic, copy, readonly) YYImageView *_Nullable(^ _Nonnull CornerRadius)(float cornerRadius);
///图片边框宽度
@property (nonatomic, copy, readonly) YYImageView *_Nullable(^ _Nonnull BorderWidth)(float borderWidth);
///图片边框颜色
@property (nonatomic, copy, readonly) YYImageView *_Nullable(^ _Nonnull BorderColor)(UIColor * _Nonnull borderColor);
///图片的tag
@property (nonatomic, copy, readonly) YYImageView *_Nullable(^ _Nonnull Tag)(NSInteger tag);

///创建图片
-(YYImageView *_Nullable)createYYImageView:(void(^_Nullable)(YYImageView * _Nullable yyImageView))imageview;

@end
