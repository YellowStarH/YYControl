//
//  ViewController.m
//  YYControl
//
//  Created by 黄杨洋 on 2018/1/12.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import "ViewController.h"
#import "YYScrollView.h"
#import "YYLabel.h"
#import "YYButton.h"
#import "YYSlider.h"
#import "YYImageView.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //第一种创建方式
    YYButton *btn = [YYButtonShare createYYButton:^(YYButton * _Nullable yybutton) {
        yybutton.Frame(CGRectMake(100, 100, 100, 30))
        .Title(@"测试按钮")
        .BackgroundColor([UIColor purpleColor])
        .TextColor([UIColor whiteColor]);
    } YYButtonClick:^(UIButton * _Nullable sender) {
        NSLog(@"sender:%@",sender);
    }];
    
    [self.view addSubview:btn];
    
    //第二种创建方式  - 此方式不会联想（）中的内容
    YYLabel *label = YYLabelShare.Frame(CGRectMake(100, 150, 200, 100))
    .NumberOfLines(0)
    .Text(@"测试label测试label测试label测试label测试label测试label测试label测试label测试label测试label测试label测试label")
    .backColor([UIColor redColor])
    .WordSpace(6)
    .LineSpace(10)
    .Alpha(0.6)
    .TextColor([UIColor whiteColor])
    .TextAlignment(NSTextAlignmentCenter)
    .FontofSize([UIFont systemFontOfSize:15]);
    [self.view addSubview:label];
    
    //第三种创建方式
    
    YYSlider *slider = [[YYSlider alloc]init];
    slider.Frame(CGRectMake(100, 250, 200, 20))
    .MaximumValue(1)
    .MaximumValue(10)
    .MinimumTrackTintColor([UIColor grayColor])
    .MaximumTrackTintColor([UIColor purpleColor]);
    [self.view addSubview:slider];
    
    
    //slider带滑动事件的创建
    
    YYSlider *yySlider = [YYSliderShare createYYSlider:^(YYSlider * _Nullable yySlider) {
        yySlider.Frame(CGRectMake(100, 300, 200, 20))
        .MaximumValue(1)
        .MaximumValue(10)
        .MinimumTrackTintColor([UIColor grayColor])
        .MaximumTrackTintColor([UIColor purpleColor]);
    } YYSliderClick:^(UISlider * _Nullable slider) {
        NSLog(@"value:%f",slider.value);
    }];
    [self.view addSubview:yySlider];
    
    //scrollview创建
    YYScrollView *scrollview = [YYScrollViewShare createYYScrollView:^(YYScrollView * _Nullable yyScrollView) {
        yyScrollView.Frame(CGRectMake(100, 350, 200, 200))
        .ContentSize(CGSizeMake(600, 200))
        .BackgroundColor([UIColor purpleColor])
        .PagingEnabled(YES);
    }];
    YYLabel *scrlabel = YYLabelShare.Frame(CGRectMake(50, 0, 100, 30))
    .Text(@"添加label")
    .backColor([UIColor redColor])
    .Alpha(0.6)
    .TextColor([UIColor whiteColor])
    .TextAlignment(NSTextAlignmentCenter)
    .FontofSize([UIFont systemFontOfSize:15]);
    [scrollview addSubview:scrlabel];
    [self.view addSubview:scrollview];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
