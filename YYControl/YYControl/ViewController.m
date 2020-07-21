//
//  ViewController.m
//  YYControl
//
//  Created by 黄杨洋 on 2018/1/12.
//  Copyright © 2018年 Apple. All rights reserved.
//

#import "ViewController.h"
#import "YYScrollView.h"
#import "HYYLabel.h"
#import "HYYButton.h"
#import "HYYSlider.h"
#import "HYYImageView.h"
#import "HYYUITextView.h"

#import "HYYTextField.h"


@interface ViewController ()

@property (nonatomic, strong) HYYButton *btn;
@property (nonatomic, strong) HYYImageView *yyImageView;
@property (nonatomic, strong) HYYLabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setUpView];
    
    [self yy_Block];
    
}

- (void)setUpView{
    //scrollview创建
    YYScrollView *scrollview = [YYScrollViewShare createYYScrollView:^(YYScrollView * _Nullable yyScrollView) {
        yyScrollView.Frame(self.view.bounds)
        .BackgroundColor(UIColor.clearColor)
        .PagingEnabled(NO);
    }];
    
    [self.view addSubview:scrollview];
    
    //第一种创建方式
    HYYButton *btn = [HYYButtonShare createHYYButton:^(HYYButton * _Nullable HYYButton) {
        HYYButton.Frame(CGRectMake(100, 50, 100, 30))
        .Text(@"测试按钮")
        .BackgroundColor([UIColor purpleColor])
        .TextColor([UIColor whiteColor]);
    } HYYButtonClick:^(UIButton * _Nullable sender) {
        NSLog(@"sender:%@",sender);
    }];
    btn.hyyButtonClickBlock = ^(UIButton*  _Nullable sender) {
        NSLog(@"sender:%@",sender.titleLabel.text);
    };
    [scrollview addSubview:btn];
    self.btn = btn;
    
    
    //第二种创建方式  - 此方式不会联想（）中的内容
    HYYLabel *label = [HYYLabelShare createHYYLabel:^(HYYLabel * _Nullable HYYLabel) {
        
        HYYLabel.Frame(CGRectMake(100, 150, 200, 100))
        .NumberOfLines(0)
        .Text(@"测试label测试label测试label测试label测试label测试label测试label测试label测试label测试label测试label测试label测试label测试label测试label测试label测试label测试label测试label测试label测试label测试labe")
        .backColor([UIColor redColor])
        .WordSpace(6)
        .LineSpace(10)
        .Alpha(0.6)
        .UserInteractionEnabled(YES)
        .TextColor([UIColor whiteColor])
        //    .TextAlignment(NSTextAlignmentCenter)
        .FontofSize([UIFont systemFontOfSize:15])
        .IsAdaptionHeight(YES);
    }];
    [scrollview addSubview:label];
    self.label = label;
    
    //第三种创建方式
    
    HYYSlider *slider = [[HYYSlider alloc]init];
    slider.Frame(CGRectMake(100, CGRectGetMaxY(label.frame) + 10, 200, 20))
    .MaximumValue(1)
    .MaximumValue(10)
    .MinimumTrackTintColor([UIColor grayColor])
    .MaximumTrackTintColor([UIColor purpleColor]);
    [scrollview addSubview:slider];
    
    
    //slider带滑动事件的创建
    
    HYYSlider *hyySlider = [HYYSliderShare createHYYSlider:^(HYYSlider * _Nullable HYYSlider) {
        HYYSlider.Frame(CGRectMake(100, CGRectGetMaxY(slider.frame) + 10, 200, 20))
        .MaximumValue(1)
        .MaximumValue(10)
        .MinimumTrackTintColor([UIColor grayColor])
        .MaximumTrackTintColor([UIColor purpleColor]);
    } HYYSliderClick:^(UISlider * _Nullable slider) {
        NSLog(@"value:%f",slider.value);
    }];
    [scrollview addSubview:hyySlider];
    
    HYYLabel *scrlabel = HYYLabelShare
    .Frame(CGRectMake(50, CGRectGetMaxY(hyySlider.frame) + 10, 100, 30))
    .Text(@"添加label")
    .backColor([UIColor redColor])
    .Alpha(0.6)
    .TextColor([UIColor whiteColor])
    .TextAlignment(NSTextAlignmentCenter)
    .FontofSize([UIFont systemFontOfSize:15]);
    [scrollview addSubview:scrlabel];
    
    
    HYYTextField *textfiled = [HYYTextFieldShare createHYYTextField:^(HYYTextField * _Nullable yyTextFiled) {
        yyTextFiled.Frame(CGRectMake(100, CGRectGetMaxY(scrlabel.frame) + 10, 100, 30))
        .BackgroundColor([UIColor orangeColor])
        .Placeholder(@"测试输入框")
        .placeholderColor([UIColor whiteColor])
        .PlaceholderFont([UIFont systemFontOfSize:10])
        .leftSpace(10)
        .LeftViewMode(UITextFieldViewModeAlways)
        .BorderWidth(1)
        .BorderColor([UIColor purpleColor]);
    }];
    [scrollview addSubview:textfiled];
    
    HYYUITextView *textview = [HYYTextViewShare createHYYUITextView:^(HYYUITextView * _Nullable TextView) {
        TextView
        .Frame(CGRectMake(100, CGRectGetMaxY(textfiled.frame) + 10, 100, 60))
        .MasksToBounds(YES)
        .BorderColor([UIColor blueColor])
        .BorderWidth(2)
        .Placeholder(@"aaaaaa")
        .TextContainerInset(UIEdgeInsetsMake(10.0f, 10.0f, 10.0f, 10.0f))
        .PlaceholderFont([UIFont systemFontOfSize:18])
        .Font([UIFont systemFontOfSize:18]);
    }];
    
    [scrollview addSubview:textview];
    
    HYYImageView *yyimageView = [HYYImageViewShare createHYYImageView:^(HYYImageView * _Nullable HYYImageView) {
        
        HYYImageView
        .Frame(CGRectMake(100, CGRectGetMaxY(textview.frame) + 50, 100, 100))
        .MasksToBounds(YES)
        .UserInteractionEnabled(YES)
        .BackgroundColor(UIColor.brownColor);
        
    }];
    [scrollview addSubview:yyimageView];
    self.yyImageView = yyimageView;
    
    
    scrollview.ContentSize(CGSizeMake(self.view.frame.size.width, CGRectGetMaxY(yyimageView.frame) + 50));
    
    /**
     NSArray *products = OrderDetailsData[@"products"];
     NSDictionary *dic = products[0];
     NSString *server_name = dic[@"server_name"];
             self.orderTopView.typeLabel.Text([NSString stringWithFormat:@"1%@",OrderDetailsData[@"products"][0][@"server_name"]]);
     */
    
}


- (void)yy_Block{
    
    self.btn.hyyButtonClickBlock = ^(UIButton * _Nullable sender) {
        NSLog(@"btn");
    };
    
    self.yyImageView.imageViewClick = ^(UITapGestureRecognizer * _Nullable Gesture) {
        NSLog(@"yyImageView");
    };
    
    self.label.labelClick = ^(UITapGestureRecognizer * _Nullable Gesture) {
        NSLog(@"label");
    };
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
