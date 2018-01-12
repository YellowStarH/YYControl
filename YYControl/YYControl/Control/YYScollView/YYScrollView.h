//
//  YYScrollView.h
//  YYControl
//
//  Created by 黄杨洋 on 2018/1/12.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>

#define YYScrollViewShare [[YYScrollView alloc]init]

@interface YYScrollView : UIScrollView

///ScrollView的大小位置
@property (nonatomic, copy, readonly) YYScrollView *_Nullable(^ _Nonnull Frame)(CGRect  frame);
///ScrollView的背景颜色
@property (nonatomic, copy, readonly) YYScrollView *_Nullable(^ _Nonnull BackgroundColor)(UIColor * _Nonnull backgroundColor);
///ScrollView是否分页
@property (nonatomic, copy, readonly) YYScrollView *_Nullable(^ _Nonnull PagingEnabled)(BOOL pagingEnabled);
///ScrollView是否显示滚动条-水平方向
@property (nonatomic, copy, readonly) YYScrollView *_Nullable(^ _Nonnull ShowsHorizontalScrollIndicator)(BOOL showsHorizontalScrollIndicator);
///ScrollView是否显示滚动条-竖直方向
@property (nonatomic, copy, readonly) YYScrollView *_Nullable(^ _Nonnull ShowsVerticalScrollIndicator)(BOOL showsVerticalScrollIndicator);
///ScrollView是否允许滑动
@property (nonatomic, copy, readonly) YYScrollView *_Nullable(^ _Nonnull ScrollEnabled)(BOOL scrollEnabled);
///ScrollView是否有弹簧效果
@property (nonatomic, copy, readonly) YYScrollView *_Nullable(^ _Nonnull Bounces)(BOOL bounces);
///ScrollView的可滚动范围
@property (nonatomic, copy, readonly) YYScrollView *_Nullable(^ _Nonnull ContentSize)(CGSize contentSize);
///ScrollView的偏移量
@property (nonatomic, copy, readonly) YYScrollView *_Nullable(^ _Nonnull ContentOffset)(CGPoint contentOffset);
///ScrollView是否只能在一个方向上滚动(默认NO)
@property (nonatomic, copy, readonly) YYScrollView *_Nullable(^ _Nonnull DirectionalLockEnabled)(BOOL directionalLockEnabled);
///ScrollView的透明度
@property (nonatomic, copy, readonly) YYScrollView *_Nullable(^ _Nonnull Alpha)(float  alpha);
///ScrollView的圆角
@property (nonatomic, copy, readonly) YYScrollView *_Nullable(^ _Nonnull CornerRadius)(float cornerRadius);
///ScrollView的masksToBounds
@property (nonatomic, copy, readonly) YYScrollView *_Nullable(^ _Nonnull MasksToBounds)(BOOL masksToBounds);
///ScrollView的tag
@property (nonatomic, copy, readonly) YYScrollView *_Nullable(^ _Nonnull Tag)(NSInteger tag);


///创建ScrollView
-(YYScrollView * _Nullable)createYYScrollView:(void(^_Nullable)(YYScrollView * _Nullable yyScrollView))scrollView;


@end
