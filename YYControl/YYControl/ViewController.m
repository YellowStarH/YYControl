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
#import "YYUITextView.h"

#import "YYTextField.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //第一种创建方式
    YYButton *btn = [YYButtonShare createYYButton:^(YYButton * _Nullable yybutton) {
        yybutton.Frame(CGRectMake(100, 100, 100, 30))
        .Text(@"测试按钮")
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
        yyScrollView.Frame(CGRectMake(100, 350, 200, 100))
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
    
    
    YYTextField *textfiled = [YYTextFieldShare createYYTextField:^(YYTextField * _Nullable yyTextFiled) {
        yyTextFiled.Frame(CGRectMake(100, 500, 100, 30))
        .BackgroundColor([UIColor orangeColor])
        .Placeholder(@"测试输入框")
        .placeholderColor([UIColor whiteColor])
        .PlaceholderFont([UIFont systemFontOfSize:10])
        .leftSpace(10)
        .LeftViewMode(UITextFieldViewModeAlways)
        .BorderWidth(1)
        .BorderColor([UIColor purpleColor]);
    }];
    [self.view addSubview:textfiled];
    
    YYUITextView *textview = [YYTextViewShare createYYUITextView:^(YYUITextView * _Nullable TextView) {
        TextView.Frame(CGRectMake(100, 20, 100, 60)).MasksToBounds(YES)
        .BorderColor([UIColor blueColor])
        .BorderWidth(2)
        .Placeholder(@"aaaaaa")
//        .PlaceholderFont([UIFont systemFontOfSize:12])
        .Font([UIFont systemFontOfSize:18]);
    }];
    [self.view addSubview:textview];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
