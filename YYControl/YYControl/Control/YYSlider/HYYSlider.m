//
//  HYYSlider.m
//  YYControl
//
//  Created by 黄杨洋 on 2018/1/12.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import "HYYSlider.h"

@interface HYYSlider()
{
     void (^HYYSliderChange)(UISlider *slider);
}


@end

@implementation HYYSlider


-(HYYSlider * _Nullable (^)(CGRect))Frame{
    return ^ HYYSlider *(CGRect rect) {
        self.frame = rect;
        return self;
    };
}


-(HYYSlider * _Nullable (^)(BOOL))Continuous{
    return ^ HYYSlider *(BOOL continuous) {
        self.continuous = continuous;
        return self;
    };
}

-(HYYSlider * _Nullable (^)(float))MinimumValue{
    return ^ HYYSlider *(float minimumValue) {
        self.minimumValue = minimumValue;
        return self;
    };
}

-(HYYSlider * _Nullable (^)(float))MaximumValue{
    return ^ HYYSlider *(float maximumValue) {
        self.maximumValue = maximumValue;
        return self;
    };
}


-(HYYSlider * _Nullable (^)(UIColor * _Nullable))MinimumTrackTintColor{
    return ^ HYYSlider *(UIColor *minimumTrackTintColor) {
        self.minimumTrackTintColor = minimumTrackTintColor;
        return self;
    };
}


-(HYYSlider * _Nullable (^)(UIColor * _Nullable))MaximumTrackTintColor{
    return ^ HYYSlider *(UIColor *maximumTrackTintColor) {
        self.maximumTrackTintColor = maximumTrackTintColor;
        return self;
    };
}

-(HYYSlider * _Nullable (^)(NSString * _Nullable))SetThumbImageName{
    return ^ HYYSlider *(NSString *ImageName) {
        [self setThumbImage:[UIImage imageNamed:ImageName] forState:UIControlStateNormal];
        return self;
    };
}


-(HYYSlider * _Nullable (^)(NSInteger))Tag{
    return ^ HYYSlider *(NSInteger tag) {
        self.tag = tag;
        return self;
    };
}


-(HYYSlider *)createHYYSlider:(void (^)(HYYSlider * _Nullable))slider{
    slider(self);
    return self;
}

-(HYYSlider *)createHYYSlider:(void (^)(HYYSlider * _Nullable))slider HYYSliderClick:(void (^)(UISlider *slider))HYYSliderClick{
    slider(self);
    HYYSliderChange = HYYSliderClick;
    [self addTarget:self action:@selector(HYYSliderClick:) forControlEvents:UIControlEventValueChanged];
    return self;
}

-(void)HYYSliderClick:(UISlider*)slider{
    if (HYYSliderChange) {
        HYYSliderChange(slider);
    }
}


@end
