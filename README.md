# YYControl
控件封装，简化使用（UIButton，UIScrollview，UILabel，UIImageView，UISlider）
## 创建方式一（比如按钮：带点击事件的创建）
```
YYButton *btn = [YYButtonShare createYYButton:^(YYButton * _Nullable yybutton) {
        yybutton.Frame(CGRectMake(100, 100, 100, 30))
        .Text(@"测试按钮")
        .BackgroundColor([UIColor purpleColor])
        .TextColor([UIColor whiteColor]);
    } YYButtonClick:^(UIButton * _Nullable sender) {
        NSLog(@"sender:%@",sender);
    }];
```
## 创建方式二(此方式不会联想（）中的内容，使用宏定义直接使用)
```
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
```
## 创建方式三(自定义对象使用)
```
YYSlider *slider = [[YYSlider alloc]init];
    slider.Frame(CGRectMake(100, 250, 200, 20))
    .MaximumValue(1)
    .MaximumValue(10)
    .MinimumTrackTintColor([UIColor grayColor])
    .MaximumTrackTintColor([UIColor purpleColor]);
    [self.view addSubview:slider];
```
## UILabel的行间距字间距可直接设置
```
YYLabel *label = YYLabelShare.Frame(CGRectMake(100, 150, 200, 100))
    .NumberOfLines(0)
    .Text(@"测试label测试label测试label测试label测试label测试label测试label测试label测试label测试label测试label测试label")
    .backColor([UIColor redColor])
    .WordSpace(6)//字间距
    .LineSpace(10)//行间距
    .Alpha(0.6)
    .TextColor([UIColor whiteColor])
    .TextAlignment(NSTextAlignmentCenter)
    .FontofSize([UIFont systemFontOfSize:15]);
    [self.view addSubview:label];
```
