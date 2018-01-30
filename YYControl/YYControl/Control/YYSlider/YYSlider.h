//
//  YYSlider.h
//  YYControl
//
//  Created by 黄杨洋 on 2018/1/12.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>

#define YYSliderShare [[YYSlider alloc]init]

@interface YYSlider : UISlider

////滑块的大小位置
@property (nonatomic, copy, readonly) YYSlider *_Nullable(^ _Nonnull Frame)(CGRect  frame);

///滑块值改变方式
@property (nonatomic, copy, readonly) YYSlider *_Nullable(^ _Nonnull Continuous)(BOOL  continuous);

///滑块的最小值
@property (nonatomic, copy, readonly) YYSlider *_Nullable(^ _Nonnull MinimumValue)(float minimumValue);

///滑块的最大值
@property (nonatomic, copy, readonly) YYSlider *_Nullable(^ _Nonnull MaximumValue)(float maximumValue);

///滑块的滑过的颜色
@property (nonatomic, copy, readonly) YYSlider *_Nullable(^ _Nonnull MinimumTrackTintColor)(UIColor * _Nullable minimumTrackTintColor);

///滑块的未划过的颜色
@property (nonatomic, copy, readonly) YYSlider *_Nullable(^ _Nonnull MaximumTrackTintColor)(UIColor * _Nullable maximumTrackTintColor);
///滑块的图片
@property (nonatomic, copy, readonly) YYSlider *_Nullable(^ _Nonnull SetThumbImageName)(NSString * _Nullable imagename);
///滑块的tag
@property (nonatomic, copy, readonly) YYSlider *_Nullable(^ _Nonnull Tag)(NSInteger tag);


/**
 不带滑动事件的创建

 @param slider <#slider description#>
 @return <#return value description#>
 */
-(YYSlider *_Nullable)createYYSlider:(void(^_Nullable)(YYSlider * _Nullable slider))slider;



/**
 带滑动事件的创建

 @param slider <#slider description#>
 @param yySliderClick 滑动事件的回调
 @return <#return value description#>
 */
-(YYSlider *_Nullable)createYYSlider:(void(^_Nullable)(YYSlider * _Nullable yySlider))slider YYSliderClick:(void (^_Nullable)(UISlider * _Nullable slider)) yySliderClick;

@end
