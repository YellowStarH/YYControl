//
//  YYSlider.m
//  YYControl
//
//  Created by 黄杨洋 on 2018/1/12.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import "YYSlider.h"

@interface YYSlider()
{
     void (^YYSliderClick)(UISlider *slider);
}


@end

@implementation YYSlider


-(YYSlider * _Nullable (^)(CGRect))Frame{
    return ^ YYSlider *(CGRect rect) {
        self.frame = rect;
        return self;
    };
}


-(YYSlider * _Nullable (^)(BOOL))Continuous{
    return ^ YYSlider *(BOOL continuous) {
        self.continuous = continuous;
        return self;
    };
}

-(YYSlider * _Nullable (^)(float))MinimumValue{
    return ^ YYSlider *(float minimumValue) {
        self.minimumValue = minimumValue;
        return self;
    };
}

-(YYSlider * _Nullable (^)(float))MaximumValue{
    return ^ YYSlider *(float maximumValue) {
        self.maximumValue = maximumValue;
        return self;
    };
}


-(YYSlider * _Nullable (^)(UIColor * _Nullable))MinimumTrackTintColor{
    return ^ YYSlider *(UIColor *minimumTrackTintColor) {
        self.minimumTrackTintColor = minimumTrackTintColor;
        return self;
    };
}


-(YYSlider * _Nullable (^)(UIColor * _Nullable))MaximumTrackTintColor{
    return ^ YYSlider *(UIColor *maximumTrackTintColor) {
        self.maximumTrackTintColor = maximumTrackTintColor;
        return self;
    };
}

-(YYSlider * _Nullable (^)(NSString * _Nullable))SetThumbImageName{
    return ^ YYSlider *(NSString *ImageName) {
        [self setThumbImage:[UIImage imageNamed:ImageName] forState:UIControlStateNormal];
        return self;
    };
}


-(YYSlider * _Nullable (^)(NSInteger))Tag{
    return ^ YYSlider *(NSInteger tag) {
        self.tag = tag;
        return self;
    };
}


-(YYSlider *)createYYSlider:(void (^)(YYSlider * _Nullable))slider{
    slider(self);
    return self;
}

-(YYSlider *)createYYSlider:(void (^)(YYSlider * _Nullable))slider YYSliderClick:(void (^)(UISlider *slider))yySliderClick{
    slider(self);
    YYSliderClick = yySliderClick;
    [self addTarget:self action:@selector(yySliderClick:) forControlEvents:UIControlEventValueChanged];
    return self;
}

-(void)yySliderClick:(UISlider*)slider{
    if (YYSliderClick) {
        YYSliderClick(slider);
    }
}


@end
