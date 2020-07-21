//
//  YYImage.h
//  YYControl
//
//  Created by 黄杨洋 on 2018/1/11.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#define HYYImageViewShare [[HYYImageView alloc]init]

typedef void(^ImageViewClick)(UITapGestureRecognizer * _Nullable Gesture);

@interface HYYImageView :UIImageView

///图片的大小位置
@property (nonatomic, copy, readonly) HYYImageView *_Nullable(^ _Nonnull Frame)(CGRect  frame);
///设置图片
@property (nonatomic, copy, readonly) HYYImageView *_Nullable(^ _Nonnull SetImage)(NSString * _Nonnull setImagename);
///图片的背景颜色
@property (nonatomic, copy, readonly) HYYImageView *_Nullable(^ _Nonnull BackgroundColor)(UIColor * _Nonnull backgroundColor);
///图片的透明度
@property (nonatomic, copy, readonly) HYYImageView *_Nullable(^ _Nonnull Alpha)(float  alpha);
///图片的masksToBounds
@property (nonatomic, assign, readonly) HYYImageView *_Nullable(^ _Nonnull MasksToBounds)(BOOL masksToBounds);
///图片的圆角
@property (nonatomic, copy, readonly) HYYImageView *_Nullable(^ _Nonnull CornerRadius)(float cornerRadius);
///图片边框宽度
@property (nonatomic, copy, readonly) HYYImageView *_Nullable(^ _Nonnull BorderWidth)(float borderWidth);
///图片边框颜色
@property (nonatomic, copy, readonly) HYYImageView *_Nullable(^ _Nonnull BorderColor)(UIColor * _Nonnull borderColor);
///图片的tag
@property (nonatomic, copy, readonly) HYYImageView *_Nullable(^ _Nonnull Tag)(NSInteger tag);
///是否允许交互
@property (nonatomic, assign, readonly) HYYImageView *_Nullable(^ _Nonnull UserInteractionEnabled)(BOOL userInteractionEnabled);

///创建图片
-(HYYImageView *_Nullable)createHYYImageView:(void(^_Nullable)(HYYImageView * _Nullable HYYImageView))imageview;

@property (nonatomic,copy) ImageViewClick _Nullable imageViewClick;

@end
