//
//  DOHDesignAttributeBaseView.m
//  DOProgram
//
//  Created by 彩虹蜗牛 on 2018/2/5.
//  Copyright © 2018年 Dolion.Hou. All rights reserved.
//DOH-元素属性设置详情基本属性

//slider类型
typedef NS_ENUM(NSInteger ,sliderType) {
    backgroundColorRed,//背景颜色红
    backgroundColorGreen,//背景颜色绿
    backgroundColorBlue,//背景颜色蓝
    shadowColorRed,//阴影颜色红
    shadowColorGreen,//阴影颜色绿
    shadowColorBlue,//阴影颜色蓝
    borderColorRed,//边框颜色红
    borderColorGreen,//边框颜色绿
    borderColorBlue,//边框颜色蓝
    selfAlpha,//控件透明度
};
//textFiled类型
typedef NS_ENUM(NSInteger ,textFiledType) {
    positionX,//位置x
    positionY,//位置y
    sizeW,//尺寸w
    sizeH,//尺寸h
    selfCornerRaudios,//控件圆角
    shadowCornerRaudios,//阴影圆角
    shadowOffsetW,//阴影偏移量w
    shadowOffsetH,//阴影偏移量h
    shadowAlpha,//阴影透明度
    borderCornerRadios,//边框圆角
    borderLineWidth,//边框线宽
};

#define ownerWidth mainScreenWith - 160

#import "DOHDesignAttributeBaseView.h"

@interface DOHDesignAttributeBaseView ()<UITextFieldDelegate>

@end

@implementation DOHDesignAttributeBaseView{
    UIButton *saveButton;//保存按钮
    UILabel *titleLabel;//标题
    UILabel *positionLabel;//位置
    UILabel *xLabel;//x坐标
    UITextField *xTextFiled;//x输入框
    UILabel *yLabel;//y坐标
    UITextField *yTextFiled;//y输入框
    UILabel *sizeLabel;//尺寸
    UILabel *wLabel;//宽
    UITextField *wTextFiled;//宽输入框
    UILabel *hLabel;//高
    UITextField *hTextFiled;//高输入框
    UILabel *backgroundColorTitle;//背景颜色标题
    UILabel *redColorNameLabel;//红色
    UILabel *greenColorNameLabel;//绿色
    UILabel *blueColorNameLabel;//蓝色
    UISlider *redSlider;//红色滑动条
    UISlider *greenSlider;//绿色滑动条
    UISlider *blueSlider;//蓝色滑动条
    UILabel *cornerRadioName;//圆角名
    UITextField *cornerRadioTextFiled;//圆角值
    UILabel *shadowLabel;//阴影名
    UILabel *shadowCornerLabel;//阴影圆角
    UITextField *shadowCornerTextFiled;//阴影圆角值
    UILabel *shadowOffsetLabel;//阴影偏移
    UILabel *shadowXLabel;//x偏移
    UITextField *shadowXVlaueTextFiled;//x偏移值
    UITextField *shadowYVlaueTextFiled;//y偏移值
    UILabel *shadowYLabel;//y偏移
    UILabel *shadowColorName;//阴影颜色
    UILabel *shadowAlphaLabel;//透明度
    UITextField *shadowAlphaTextFiled;//透明度值
    UILabel *shadowRedColorNameLabel;//红色
    UILabel *shadowGreenColorNameLabel;//绿色
    UILabel *shadowBlueColorNameLabel;//蓝色
    UISlider *shadowRedSlider;//红色滑动条
    UISlider *shadowGreenSlider;//绿色滑动条
    UISlider *shadowBlueSlider;//蓝色滑动条
    UILabel *borderLabel;//边框
    UILabel *borderWidthLabel;//线宽
    UITextField *borderWidthVlaue;//线宽值
    UILabel *borderCorner;//边框圆角
    UITextField *borderCornerVlaue;//边框圆角值
    UILabel *borderColorLabel;//边框颜色
    UILabel *borderRedColorNameLabel;//红色
    UILabel *borderGreenColorNameLabel;//绿色
    UILabel *borderBlueColorNameLabel;//蓝色
    UISlider *borderRedSlider;//红色滑动条
    UISlider *borderGreenSlider;//绿色滑动条
    UISlider *borderBlueSlider;//蓝色滑动条
    UILabel *alphaLabel;//控件透明度label
    UISlider *alphaSlider;//控件透明度值
}

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self setConfigure];
        [self creatSubviews];
        [self setSubviewsConfigure];
    }
    return self;
}

- (void)setConfigure{
    self.frame = CGRectMake(90, 50, mainScreenWith - 160, mainScreenHeight - 180);
    self.layer.borderColor = [UIColor grayColor].CGColor;
    self.layer.borderWidth = 0.75;
    self.layer.cornerRadius = 5;
    self.userInteractionEnabled = YES;
    self.contentSize = CGSizeMake(mainScreenWith - 160, mainScreenHeight+200);
    self.alpha = 0.75;
    self.showsVerticalScrollIndicator = NO;
    self.showsHorizontalScrollIndicator = NO;
}

- (void)creatSubviews{
    saveButton = [[UIButton alloc] init];
    [self addSubview:saveButton];
//
    titleLabel = [[UILabel alloc] init];
    [self addSubview:titleLabel];
//
    positionLabel = [[UILabel alloc] init];
    [self addSubview:positionLabel];
//
    xLabel = [[UILabel alloc] init];
    [self addSubview:xLabel];
//
    xTextFiled = [[UITextField alloc] init];
    [self addSubview:xTextFiled];
//
    yLabel = [[UILabel alloc] init];
    [self addSubview:yLabel];
//
    yTextFiled = [[UITextField alloc] init];
    [self addSubview:yTextFiled];
//
    sizeLabel = [[UILabel alloc] init];
    [self addSubview:sizeLabel];
//
    wLabel = [[UILabel alloc] init];
    [self addSubview:wLabel];
//
    wTextFiled = [[UITextField alloc] init];
    [self addSubview:wTextFiled];
//
    hLabel = [[UILabel alloc] init];
    [self addSubview:hLabel];
//
    hTextFiled = [[UITextField alloc] init];
    [self addSubview:hTextFiled];
//
    backgroundColorTitle = [[UILabel alloc] init];
    [self addSubview:backgroundColorTitle];
//
    redColorNameLabel = [[UILabel alloc] init];
    [self addSubview:redColorNameLabel];
//
    greenColorNameLabel = [[UILabel alloc] init];
    [self addSubview:greenColorNameLabel];
//
    blueColorNameLabel = [[UILabel alloc] init];
    [self addSubview:blueColorNameLabel];
//
    redSlider = [[UISlider alloc] init];
    [self addSubview:redSlider];
//
    greenSlider = [[UISlider alloc] init];
    [self addSubview:greenSlider];
//
    blueSlider = [[UISlider alloc] init];
    [self addSubview:blueSlider];
//
    cornerRadioName = [[UILabel alloc] init];
    [self addSubview:cornerRadioName];
//
    cornerRadioTextFiled = [[UITextField alloc] init];
    [self addSubview:cornerRadioTextFiled];
//
    shadowLabel = [[UILabel alloc] init];
    [self addSubview:shadowLabel];
//
    shadowCornerLabel = [[UILabel alloc] init];
    [self addSubview:shadowCornerLabel];
//
    shadowCornerTextFiled = [[UITextField alloc] init];
    [self addSubview:shadowCornerTextFiled];
//
    shadowOffsetLabel = [[UILabel alloc] init];
    [self addSubview:shadowOffsetLabel];
//
    shadowXLabel = [[UILabel alloc] init];
    [self addSubview:shadowXLabel];
//
    shadowYLabel = [[UILabel alloc] init];
    [self addSubview:shadowYLabel];
//
    shadowXVlaueTextFiled = [[UITextField alloc] init];
    [self addSubview:shadowXVlaueTextFiled];
//
    shadowYVlaueTextFiled = [[UITextField alloc] init];
    [self addSubview:shadowYVlaueTextFiled];
//
    shadowAlphaLabel = [[UILabel alloc] init];
    [self addSubview:shadowAlphaLabel];
//
    shadowAlphaTextFiled = [[UITextField alloc] init];
    [self addSubview:shadowAlphaTextFiled];
//
    shadowColorName = [[UILabel alloc] init];
    [self addSubview:shadowColorName];
//
    shadowRedColorNameLabel = [[UILabel alloc] init];
    [self addSubview:shadowRedColorNameLabel];
//
    shadowGreenColorNameLabel = [[UILabel alloc] init];
    [self addSubview:shadowGreenColorNameLabel];
//
    shadowBlueColorNameLabel = [[UILabel alloc] init];
    [self addSubview:shadowBlueColorNameLabel];
//
    shadowRedSlider = [[UISlider alloc] init];
    [self addSubview:shadowRedSlider];
//
    shadowGreenSlider = [[UISlider alloc] init];
    [self addSubview:shadowGreenSlider];
//
    shadowBlueSlider = [[UISlider alloc] init];
    [self addSubview:shadowBlueSlider];
//
    borderLabel = [[UILabel alloc] init];
    [self addSubview:borderLabel];
//
    borderWidthLabel = [[UILabel alloc] init];
    [self addSubview:borderWidthLabel];
//
    borderWidthVlaue = [[UITextField alloc] init];
    [self addSubview:borderWidthVlaue];
//
    borderCorner = [[UILabel alloc] init];
    [self addSubview:borderCorner];
//
    borderCornerVlaue = [[UITextField alloc] init];
    [self addSubview:borderCornerVlaue];
//
    borderColorLabel = [[UILabel alloc] init];
    [self addSubview:borderColorLabel];
//
    borderRedColorNameLabel = [[UILabel alloc] init];
    [self addSubview:borderRedColorNameLabel];
//
    borderRedSlider = [[UISlider alloc] init];
    [self addSubview:borderRedSlider];
//
    borderGreenColorNameLabel = [[UILabel alloc] init];
    [self addSubview:borderGreenColorNameLabel];
//
    borderGreenSlider = [[UISlider alloc] init];
    [self addSubview:borderGreenSlider];
//
    borderBlueColorNameLabel = [[UILabel alloc] init];
    [self addSubview:borderBlueColorNameLabel];
//
    borderBlueSlider = [[UISlider alloc] init];
    [self addSubview:borderBlueSlider];
//
    alphaLabel = [[UILabel alloc] init];
    [self addSubview:alphaLabel];
//
    alphaSlider = [[UISlider alloc] init];
    [self addSubview:alphaSlider];
}

- (void)setSubviewsConfigure{
    [saveButton setTitle:@"保存" forState:UIControlStateNormal];
    [saveButton setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    [saveButton.titleLabel setFont:[UIFont systemFontOfSize:12]];
    saveButton.backgroundColor = [UIColor whiteColor];
    saveButton.layer.cornerRadius = 5;
    saveButton.layer.masksToBounds = YES;
    saveButton.layer.borderColor = [UIColor blueColor].CGColor;
    saveButton.layer.borderWidth = 0.5;
    
    [saveButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self).offset(mainScreenWith - 160 - 40);
        make.top.equalTo(self).offset(10);
    }];
    [saveButton addTarget:self action:@selector(saveButtonBeClicked:) forControlEvents:UIControlEventTouchUpInside];
//
    [titleLabel setText:@"基本属性"];
    [titleLabel setTextColor:[UIColor blackColor]];
    [titleLabel setFont:[UIFont systemFontOfSize:13]];
    [titleLabel sizeToFit];
    [titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self);
        make.centerY.equalTo(saveButton);
    }];
//
    [positionLabel setText:@"位置:"];
    [positionLabel setTextColor:[UIColor blackColor]];
    [positionLabel setFont:[UIFont systemFontOfSize:13]];
    [positionLabel sizeToFit];
    [positionLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self).offset(10);
        make.top.equalTo(titleLabel.mas_bottom).offset(30);
    }];
//
    [xLabel setText:@"X:"];
    [xLabel setTextColor:[UIColor blackColor]];
    [xLabel setFont:[UIFont systemFontOfSize:13]];
    [xLabel sizeToFit];
    [xLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(positionLabel.mas_right).offset(5);
        make.centerY.equalTo(positionLabel);
    }];
//
    xTextFiled.tag = positionX;
    xTextFiled.delegate = self;
    xTextFiled.placeholder = @"0.0";
    xTextFiled.layer.cornerRadius = 3;
    xTextFiled.layer.borderWidth = 0.5;
    xTextFiled.layer.borderColor = [UIColor lightGrayColor].CGColor;
    xTextFiled.font = [UIFont systemFontOfSize:12];
    [xTextFiled mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(xLabel.mas_right).offset(5);
        make.centerY.equalTo(positionLabel);
        make.width.equalTo(@50);
        make.height.equalTo(@20);
    }];
//
    [yLabel setText:@"Y:"];
    [yLabel setTextColor:[UIColor blackColor]];
    [yLabel setFont:[UIFont systemFontOfSize:13]];
    [yLabel sizeToFit];
    [yLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(xTextFiled.mas_right).offset(15);
        make.centerY.equalTo(positionLabel);
    }];
//
    yTextFiled.tag = positionY;
    yTextFiled.delegate = self;
    yTextFiled.placeholder = @"0.0";
    yTextFiled.layer.cornerRadius = 3;
    yTextFiled.layer.borderWidth = 0.5;
    yTextFiled.layer.borderColor = [UIColor lightGrayColor].CGColor;
    yTextFiled.font = [UIFont systemFontOfSize:12];
    [yTextFiled mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(yLabel.mas_right).offset(5);
        make.centerY.equalTo(positionLabel);
        make.width.equalTo(@50);
        make.height.equalTo(@20);
    }];
//
    [sizeLabel setText:@"尺寸:"];
    [sizeLabel setTextColor:[UIColor blackColor]];
    [sizeLabel setFont:[UIFont systemFontOfSize:13]];
    [sizeLabel sizeToFit];
    [sizeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self).offset(10);
        make.top.equalTo(positionLabel.mas_bottom).offset(20);
    }];
//
    [wLabel setText:@"W:"];
    [wLabel setTextColor:[UIColor blackColor]];
    [wLabel setFont:[UIFont systemFontOfSize:13]];
    [wLabel sizeToFit];
    [wLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(xLabel);
        make.centerY.equalTo(sizeLabel);
    }];
//
    wTextFiled.tag = sizeW;
    wTextFiled.delegate = self;
    wTextFiled.placeholder = @"0.0";
    wTextFiled.layer.cornerRadius = 3;
    wTextFiled.layer.borderWidth = 0.5;
    wTextFiled.layer.borderColor = [UIColor lightGrayColor].CGColor;
    wTextFiled.font = [UIFont systemFontOfSize:12];
    [wTextFiled mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(xTextFiled);
        make.centerY.equalTo(sizeLabel);
        make.width.equalTo(@50);
        make.height.equalTo(@20);
    }];
//
    [hLabel setText:@"H:"];
    [hLabel setTextColor:[UIColor blackColor]];
    [hLabel setFont:[UIFont systemFontOfSize:13]];
    [hLabel sizeToFit];
    [hLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(yLabel);
        make.centerY.equalTo(sizeLabel);
    }];
//
    hTextFiled.tag = sizeH;
    hTextFiled.delegate = self;
    hTextFiled.placeholder = @"0.0";
    hTextFiled.layer.cornerRadius = 3;
    hTextFiled.layer.borderWidth = 0.5;
    hTextFiled.layer.borderColor = [UIColor lightGrayColor].CGColor;
    hTextFiled.font = [UIFont systemFontOfSize:12];
    [hTextFiled mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(yTextFiled);
        make.centerY.equalTo(sizeLabel);
        make.width.equalTo(@50);
        make.height.equalTo(@20);
    }];
//
    [backgroundColorTitle setText:@"背景颜色"];
    [backgroundColorTitle setTextColor:[UIColor blackColor]];
    [backgroundColorTitle setFont:[UIFont systemFontOfSize:13]];
    [backgroundColorTitle sizeToFit];
    [backgroundColorTitle mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self);
        make.top.equalTo(sizeLabel.mas_bottom).offset(20);
    }];
//
    [redColorNameLabel setText:@"红色:"];
    [redColorNameLabel setTextColor:[UIColor blackColor]];
    [redColorNameLabel setFont:[UIFont systemFontOfSize:13]];
    [redColorNameLabel sizeToFit];
    [redColorNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(sizeLabel);
        make.top.equalTo(backgroundColorTitle.mas_bottom).offset(15);
    }];
//
    [greenColorNameLabel setText:@"绿色:"];
    [greenColorNameLabel setTextColor:[UIColor blackColor]];
    [greenColorNameLabel setFont:[UIFont systemFontOfSize:13]];
    [greenColorNameLabel sizeToFit];
    [greenColorNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(sizeLabel);
        make.top.equalTo(redColorNameLabel.mas_bottom).offset(15);
    }];
//
    [blueColorNameLabel setText:@"蓝色:"];
    [blueColorNameLabel setTextColor:[UIColor blackColor]];
    [blueColorNameLabel setFont:[UIFont systemFontOfSize:13]];
    [blueColorNameLabel sizeToFit];
    [blueColorNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(sizeLabel);
        make.top.equalTo(greenColorNameLabel.mas_bottom).offset(15);
    }];
//
    redSlider.tag = backgroundColorRed;
    [redSlider addTarget:self action:@selector(sliderValueChange:) forControlEvents:UIControlEventValueChanged];
    redSlider.maximumValue = 1;
    redSlider.value = 0;
    [redSlider setThumbImage:[UIImage imageNamed:@"DOH_slider_R"] forState:UIControlStateNormal];
    [redSlider mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(redColorNameLabel.mas_right).offset(10);
        make.width.equalTo(@(ownerWidth - 60));
        make.centerY.equalTo(redColorNameLabel);
    }];
//
    greenSlider.tag = backgroundColorGreen;
    [greenSlider addTarget:self action:@selector(sliderValueChange:) forControlEvents:UIControlEventValueChanged];
    greenSlider.maximumValue = 1;
    greenSlider.value = 0;
    [greenSlider setThumbImage:[UIImage imageNamed:@"DOH_slider_G"] forState:UIControlStateNormal];
    [greenSlider mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(greenColorNameLabel.mas_right).offset(10);
        make.width.equalTo(@(ownerWidth - 60));
        make.centerY.equalTo(greenColorNameLabel);
    }];
//
    blueSlider.tag = backgroundColorBlue;
    [blueSlider addTarget:self action:@selector(sliderValueChange:) forControlEvents:UIControlEventValueChanged];
    blueSlider.maximumValue = 1;
    blueSlider.value = 0;
    [blueSlider setThumbImage:[UIImage imageNamed:@"DOH_slider_B"] forState:UIControlStateNormal];
    [blueSlider mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(blueColorNameLabel.mas_right).offset(10);
        make.width.equalTo(@(ownerWidth - 60));
        make.centerY.equalTo(blueColorNameLabel);
    }];
//
    [cornerRadioName setText:@"圆角:"];
    [cornerRadioName setTextColor:[UIColor blackColor]];
    [cornerRadioName setFont:[UIFont systemFontOfSize:13]];
    [cornerRadioName sizeToFit];
    [cornerRadioName mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(sizeLabel);
        make.top.equalTo(blueColorNameLabel.mas_bottom).offset(20);
    }];
//
    cornerRadioTextFiled.tag = selfCornerRaudios;
    cornerRadioTextFiled.delegate = self;
    cornerRadioTextFiled.placeholder = @"0.0";
    cornerRadioTextFiled.layer.cornerRadius = 3;
    cornerRadioTextFiled.layer.borderWidth = 0.5;
    cornerRadioTextFiled.layer.borderColor = [UIColor lightGrayColor].CGColor;
    cornerRadioTextFiled.font = [UIFont systemFontOfSize:12];
    [cornerRadioTextFiled mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(xTextFiled);
        make.centerY.equalTo(cornerRadioName);
        make.width.equalTo(@50);
        make.height.equalTo(@20);
    }];
//
    [shadowLabel setText:@"阴影"];
    [shadowLabel setTextColor:[UIColor blackColor]];
    [shadowLabel setFont:[UIFont systemFontOfSize:13]];
    [shadowLabel sizeToFit];
    [shadowLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self);
        make.top.equalTo(cornerRadioName.mas_bottom).offset(20);
    }];
//
    [shadowCornerLabel setText:@"圆角:"];
    [shadowCornerLabel setTextColor:[UIColor blackColor]];
    [shadowCornerLabel setFont:[UIFont systemFontOfSize:13]];
    [shadowCornerLabel sizeToFit];
    [shadowCornerLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self).offset(10);
        make.top.equalTo(shadowLabel.mas_bottom).offset(15);
    }];
//
    shadowCornerTextFiled.tag = shadowCornerRaudios;
    shadowCornerTextFiled.delegate = self;
    shadowCornerTextFiled.placeholder = @"0.0";
    shadowCornerTextFiled.layer.cornerRadius = 3;
    shadowCornerTextFiled.layer.borderWidth = 0.5;
    shadowCornerTextFiled.layer.borderColor = [UIColor lightGrayColor].CGColor;
    shadowCornerTextFiled.font = [UIFont systemFontOfSize:12];
    [shadowCornerTextFiled mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(xTextFiled);
        make.centerY.equalTo(shadowCornerLabel);
        make.width.equalTo(@50);
        make.height.equalTo(@20);
    }];
//
    [shadowOffsetLabel setText:@"偏移:"];
    [shadowOffsetLabel setTextColor:[UIColor blackColor]];
    [shadowOffsetLabel setFont:[UIFont systemFontOfSize:13]];
    [shadowOffsetLabel sizeToFit];
    [shadowOffsetLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self).offset(10);
        make.top.equalTo(shadowCornerLabel.mas_bottom).offset(15);
    }];
//
    [shadowXLabel setText:@"W:"];
    [shadowXLabel setTextColor:[UIColor blackColor]];
    [shadowXLabel setFont:[UIFont systemFontOfSize:13]];
    [shadowXLabel sizeToFit];
    [shadowXLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(xLabel);
        make.centerY.equalTo(shadowOffsetLabel);
    }];
//
    shadowXVlaueTextFiled.tag = shadowOffsetW;
    shadowXVlaueTextFiled.delegate = self;
    shadowXVlaueTextFiled.placeholder = @"0.0";
    shadowXVlaueTextFiled.layer.cornerRadius = 3;
    shadowXVlaueTextFiled.layer.borderWidth = 0.5;
    shadowXVlaueTextFiled.layer.borderColor = [UIColor lightGrayColor].CGColor;
    shadowXVlaueTextFiled.font = [UIFont systemFontOfSize:12];
    [shadowXVlaueTextFiled mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(xTextFiled);
        make.centerY.equalTo(shadowOffsetLabel);
        make.width.equalTo(@50);
        make.height.equalTo(@20);
    }];
//
    [shadowYLabel setText:@"H:"];
    [shadowYLabel setTextColor:[UIColor blackColor]];
    [shadowYLabel setFont:[UIFont systemFontOfSize:13]];
    [shadowYLabel sizeToFit];
    [shadowYLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(yLabel);
        make.centerY.equalTo(shadowOffsetLabel);
    }];
//
    shadowYVlaueTextFiled.tag = shadowOffsetH;
    shadowYVlaueTextFiled.delegate = self;
    shadowYVlaueTextFiled.placeholder = @"0.0";
    shadowYVlaueTextFiled.layer.cornerRadius = 3;
    shadowYVlaueTextFiled.layer.borderWidth = 0.5;
    shadowYVlaueTextFiled.layer.borderColor = [UIColor lightGrayColor].CGColor;
    shadowYVlaueTextFiled.font = [UIFont systemFontOfSize:12];
    [shadowYVlaueTextFiled mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(yTextFiled);
        make.centerY.equalTo(shadowOffsetLabel);
        make.width.equalTo(@50);
        make.height.equalTo(@20);
    }];
//
    [shadowAlphaLabel setText:@"透明:"];
    [shadowAlphaLabel setTextColor:[UIColor blackColor]];
    [shadowAlphaLabel setFont:[UIFont systemFontOfSize:13]];
    [shadowAlphaLabel sizeToFit];
    [shadowAlphaLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self).offset(10);
        make.top.equalTo(shadowYLabel.mas_bottom).offset(15);
    }];
//
    shadowAlphaTextFiled.tag = shadowAlpha;
    shadowAlphaTextFiled.delegate = self;
    shadowAlphaTextFiled.placeholder = @"0.0";
    shadowAlphaTextFiled.layer.cornerRadius = 3;
    shadowAlphaTextFiled.layer.borderWidth = 0.5;
    shadowAlphaTextFiled.layer.borderColor = [UIColor lightGrayColor].CGColor;
    shadowAlphaTextFiled.font = [UIFont systemFontOfSize:12];
    [shadowAlphaTextFiled mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(xTextFiled);
        make.centerY.equalTo(shadowAlphaLabel);
        make.width.equalTo(@50);
        make.height.equalTo(@20);
    }];
//
    [shadowColorName setText:@"阴影颜色:"];
    [shadowColorName setTextColor:[UIColor blackColor]];
    [shadowColorName setFont:[UIFont systemFontOfSize:13]];
    [shadowColorName sizeToFit];
    [shadowColorName mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self).offset(10);
        make.top.equalTo(shadowAlphaLabel.mas_bottom).offset(15);
    }];
//
    [shadowRedColorNameLabel setText:@"红色:"];
    [shadowRedColorNameLabel setTextColor:[UIColor blackColor]];
    [shadowRedColorNameLabel setFont:[UIFont systemFontOfSize:13]];
    [shadowRedColorNameLabel sizeToFit];
    [shadowRedColorNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(sizeLabel);
        make.top.equalTo(shadowColorName.mas_bottom).offset(15);
    }];
//
    [shadowGreenColorNameLabel setText:@"绿色:"];
    [shadowGreenColorNameLabel setTextColor:[UIColor blackColor]];
    [shadowGreenColorNameLabel setFont:[UIFont systemFontOfSize:13]];
    [shadowGreenColorNameLabel sizeToFit];
    [shadowGreenColorNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(sizeLabel);
        make.top.equalTo(shadowRedColorNameLabel.mas_bottom).offset(15);
    }];
//
    [shadowBlueColorNameLabel setText:@"蓝色:"];
    [shadowBlueColorNameLabel setTextColor:[UIColor blackColor]];
    [shadowBlueColorNameLabel setFont:[UIFont systemFontOfSize:13]];
    [shadowBlueColorNameLabel sizeToFit];
    [shadowBlueColorNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(sizeLabel);
        make.top.equalTo(shadowGreenColorNameLabel.mas_bottom).offset(15);
    }];
//
    shadowRedSlider.tag = shadowColorRed;
    [shadowRedSlider addTarget:self action:@selector(sliderValueChange:) forControlEvents:UIControlEventValueChanged];
    shadowRedSlider.maximumValue = 1;
    shadowRedSlider.value = 0;
    [shadowRedSlider setThumbImage:[UIImage imageNamed:@"DOH_slider_R"] forState:UIControlStateNormal];
    [shadowRedSlider mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(shadowRedColorNameLabel.mas_right).offset(10);
        make.width.equalTo(@(ownerWidth - 60));
        make.centerY.equalTo(shadowRedColorNameLabel);
    }];
//
    shadowGreenSlider.tag = shadowColorGreen;
    [shadowGreenSlider addTarget:self action:@selector(sliderValueChange:) forControlEvents:UIControlEventValueChanged];
    shadowGreenSlider.maximumValue = 1;
    shadowGreenSlider.value = 0;
    [shadowGreenSlider setThumbImage:[UIImage imageNamed:@"DOH_slider_G"] forState:UIControlStateNormal];
    [shadowGreenSlider mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(shadowGreenColorNameLabel.mas_right).offset(10);
        make.width.equalTo(@(ownerWidth - 60));
        make.centerY.equalTo(shadowGreenColorNameLabel);
    }];
//
    shadowBlueSlider.tag = shadowColorBlue;
    [shadowBlueSlider addTarget:self action:@selector(sliderValueChange:) forControlEvents:UIControlEventValueChanged];
    shadowBlueSlider.maximumValue = 1;
    shadowBlueSlider.value = 0;
    [shadowBlueSlider setThumbImage:[UIImage imageNamed:@"DOH_slider_B"] forState:UIControlStateNormal];
    [shadowBlueSlider mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(shadowBlueColorNameLabel.mas_right).offset(10);
        make.width.equalTo(@(ownerWidth - 60));
        make.centerY.equalTo(shadowBlueColorNameLabel);
    }];
//
    [borderLabel setText:@"边框"];
    [borderLabel setTextColor:[UIColor blackColor]];
    [borderLabel setFont:[UIFont systemFontOfSize:13]];
    [borderLabel sizeToFit];
    [borderLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self);
        make.top.equalTo(shadowBlueColorNameLabel.mas_bottom).offset(20);
    }];
//
    [borderCorner setText:@"圆角:"];
    [borderCorner setTextColor:[UIColor blackColor]];
    [borderCorner setFont:[UIFont systemFontOfSize:13]];
    [borderCorner sizeToFit];
    [borderCorner mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self).offset(10);
        make.top.equalTo(borderLabel.mas_bottom).offset(15);
    }];
//
    borderCornerVlaue.tag = borderCornerRadios;
    borderCornerVlaue.delegate = self;
    borderCornerVlaue.placeholder = @"0.0";
    borderCornerVlaue.layer.cornerRadius = 3;
    borderCornerVlaue.layer.borderWidth = 0.5;
    borderCornerVlaue.layer.borderColor = [UIColor lightGrayColor].CGColor;
    borderCornerVlaue.font = [UIFont systemFontOfSize:12];
    [borderCornerVlaue mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(xTextFiled);
        make.centerY.equalTo(borderCorner);
        make.width.equalTo(@50);
        make.height.equalTo(@20);
    }];
//
    [borderWidthLabel setText:@"线宽:"];
    [borderWidthLabel setTextColor:[UIColor blackColor]];
    [borderWidthLabel setFont:[UIFont systemFontOfSize:13]];
    [borderWidthLabel sizeToFit];
    [borderWidthLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self).offset(10);
        make.top.equalTo(borderCorner.mas_bottom).offset(15);
    }];
//
    borderWidthVlaue.tag = borderLineWidth;
    borderWidthVlaue.delegate = self;
    borderWidthVlaue.placeholder = @"0.0";
    borderWidthVlaue.layer.cornerRadius = 3;
    borderWidthVlaue.layer.borderWidth = 0.5;
    borderWidthVlaue.layer.borderColor = [UIColor lightGrayColor].CGColor;
    borderWidthVlaue.font = [UIFont systemFontOfSize:12];
    [borderWidthVlaue mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(xTextFiled);
        make.centerY.equalTo(borderWidthLabel);
        make.width.equalTo(@50);
        make.height.equalTo(@20);
    }];
//
    [borderColorLabel setText:@"边框颜色:"];
    [borderColorLabel setTextColor:[UIColor blackColor]];
    [borderColorLabel setFont:[UIFont systemFontOfSize:13]];
    [borderColorLabel sizeToFit];
    [borderColorLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self).offset(10);
        make.top.equalTo(borderWidthLabel.mas_bottom).offset(15);
    }];
//
    [borderRedColorNameLabel setText:@"红色:"];
    [borderRedColorNameLabel setTextColor:[UIColor blackColor]];
    [borderRedColorNameLabel setFont:[UIFont systemFontOfSize:13]];
    [borderRedColorNameLabel sizeToFit];
    [borderRedColorNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(sizeLabel);
        make.top.equalTo(borderColorLabel.mas_bottom).offset(15);
    }];
//
    [borderGreenColorNameLabel setText:@"绿色:"];
    [borderGreenColorNameLabel setTextColor:[UIColor blackColor]];
    [borderGreenColorNameLabel setFont:[UIFont systemFontOfSize:13]];
    [borderGreenColorNameLabel sizeToFit];
    [borderGreenColorNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(sizeLabel);
        make.top.equalTo(borderRedColorNameLabel.mas_bottom).offset(15);
    }];
//
    [borderBlueColorNameLabel setText:@"蓝色:"];
    [borderBlueColorNameLabel setTextColor:[UIColor blackColor]];
    [borderBlueColorNameLabel setFont:[UIFont systemFontOfSize:13]];
    [borderBlueColorNameLabel sizeToFit];
    [borderBlueColorNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(sizeLabel);
        make.top.equalTo(borderGreenColorNameLabel.mas_bottom).offset(15);
    }];
//
    borderRedSlider.tag = borderColorRed;
    [borderRedSlider addTarget:self action:@selector(sliderValueChange:) forControlEvents:UIControlEventValueChanged];
    borderRedSlider.maximumValue = 1;
    borderRedSlider.value = 0;
    [borderRedSlider setThumbImage:[UIImage imageNamed:@"DOH_slider_R"] forState:UIControlStateNormal];
    [borderRedSlider mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(borderRedColorNameLabel.mas_right).offset(10);
        make.width.equalTo(@(ownerWidth - 60));
        make.centerY.equalTo(borderRedColorNameLabel);
    }];
//
    borderGreenSlider.tag = borderColorGreen;
    [borderGreenSlider addTarget:self action:@selector(sliderValueChange:) forControlEvents:UIControlEventValueChanged];
    borderGreenSlider.maximumValue = 1;
    borderGreenSlider.value = 0;
    [borderGreenSlider setThumbImage:[UIImage imageNamed:@"DOH_slider_G"] forState:UIControlStateNormal];
    [borderGreenSlider mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(borderGreenColorNameLabel.mas_right).offset(10);
        make.width.equalTo(@(ownerWidth - 60));
        make.centerY.equalTo(borderGreenColorNameLabel);
    }];
//
    borderBlueSlider.tag = borderColorBlue;
    [borderBlueSlider addTarget:self action:@selector(sliderValueChange:) forControlEvents:UIControlEventValueChanged];
    borderBlueSlider.maximumValue = 1;
    borderBlueSlider.value = 0;
    [borderBlueSlider setThumbImage:[UIImage imageNamed:@"DOH_slider_B"] forState:UIControlStateNormal];
    [borderBlueSlider mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(borderBlueColorNameLabel.mas_right).offset(10);
        make.width.equalTo(@(ownerWidth - 60));
        make.centerY.equalTo(borderBlueColorNameLabel);
    }];
//
    [alphaLabel setText:@"控件透明度"];
    [alphaLabel setTextColor:[UIColor blackColor]];
    [alphaLabel setFont:[UIFont systemFontOfSize:13]];
    [alphaLabel sizeToFit];
    [alphaLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self);
        make.top.equalTo(borderBlueColorNameLabel.mas_bottom).offset(20);
    }];
//
    alphaSlider.tag = selfAlpha;
    [alphaSlider addTarget:self action:@selector(sliderValueChange:) forControlEvents:UIControlEventValueChanged];
    alphaSlider.maximumValue = 1;
    alphaSlider.value = 0;
    [alphaSlider mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.mas_right).offset(10);
        make.width.equalTo(@(ownerWidth - 20));
        make.top.equalTo(alphaLabel.mas_bottom).offset(15);
    }];
}

- (void)saveButtonBeClicked:(UIButton *)sender{
    [self removeFromSuperview];
    if (self.DOHAttributeBaseViewSaveButtonBlock) {
        self.DOHAttributeBaseViewSaveButtonBlock();
    }
}

//method
- (void)textFieldDidEndEditing:(UITextField *)textField{
    switch (textField.tag) {
        case positionX://位置x
        {
            [UIView animateWithDuration:0.5 animations:^{
               self.btn.frame = CGRectMake([textField.text floatValue], [[yTextFiled.text isEqualToString:@""]?yTextFiled.placeholder:yTextFiled.text floatValue], [[wTextFiled.text isEqualToString:@""]?wTextFiled.placeholder:wTextFiled.text floatValue], [[hTextFiled.text isEqualToString:@""]?hTextFiled.placeholder:hTextFiled.text floatValue]);
            }];
        }
            break;
        case positionY://位置y
        {
            [UIView animateWithDuration:0.5 animations:^{
                self.btn.frame = CGRectMake([[xTextFiled.text isEqualToString:@""]?xTextFiled.placeholder:xTextFiled.text floatValue], [textField.text floatValue], [[wTextFiled.text isEqualToString:@""]?wTextFiled.placeholder:wTextFiled.text floatValue], [[hTextFiled.text isEqualToString:@""]?hTextFiled.placeholder:hTextFiled.text floatValue]);
            }];
        }
            break;
        case sizeW://尺寸w
        {
            [UIView animateWithDuration:0.5 animations:^{
               self.btn.frame = CGRectMake([[xTextFiled.text isEqualToString:@""]?xTextFiled.placeholder:xTextFiled.text floatValue], [[yTextFiled.text isEqualToString:@""]?yTextFiled.placeholder:yTextFiled.text floatValue], [textField.text floatValue], [[hTextFiled.text isEqualToString:@""]?hTextFiled.placeholder:hTextFiled.text floatValue]);
            }];
        }
            break;
        case sizeH://尺寸h
        {
            [UIView animateWithDuration:0.5 animations:^{
                self.btn.frame = CGRectMake([[xTextFiled.text isEqualToString:@""]?xTextFiled.placeholder:xTextFiled.text floatValue], [[yTextFiled.text isEqualToString:@""]?yTextFiled.placeholder:yTextFiled.text floatValue], [[wTextFiled.text isEqualToString:@""]?wTextFiled.placeholder:wTextFiled.text floatValue], [textField.text floatValue]);
            }];
        }
            break;
        case selfCornerRaudios://控件圆角
        {
            self.btn.layer.cornerRadius = [textField.text floatValue];
            self.btn.layer.masksToBounds = YES;
        }
            break;
        case shadowCornerRaudios://阴影圆角
        {
            self.btn.layer.masksToBounds = NO;
            self.btn.layer.shadowRadius = [textField.text floatValue];
        }
            break;
        case shadowOffsetW://阴影偏移量w
        {
            self.btn.layer.shadowOffset = CGSizeMake([textField.text floatValue], [shadowYVlaueTextFiled.text isEqualToString:@""]?[shadowYVlaueTextFiled.placeholder floatValue]:[shadowYVlaueTextFiled.text floatValue]);
        }
            break;
        case shadowOffsetH://阴影偏移量h
        {
            self.btn.layer.shadowOffset = CGSizeMake([shadowXVlaueTextFiled.text isEqualToString:@""]?[shadowXVlaueTextFiled.placeholder floatValue]:[shadowXVlaueTextFiled.text floatValue],[textField.text floatValue]);
        }
            break;
        case shadowAlpha://阴影透明度
        {
            self.btn.layer.shadowOpacity = [textField.text floatValue];
        }
            break;
        case borderCornerRadios://边框圆角
        {
            self.btn.layer.cornerRadius = [textField.text floatValue];
        }
            break;
        case borderLineWidth://边框线宽
        {
            self.btn.layer.borderWidth = [textField.text floatValue];
        }
            break;
        default:
            break;
    }
}

- (void)sliderValueChange:(UISlider *)slider{
    switch (slider.tag) {
        case backgroundColorRed://背景颜色红
        {
            self.btn.backgroundColor = [UIColor colorWithRed:slider.value green:greenSlider.value blue:blueSlider.value alpha:1];
        }
            break;
        case backgroundColorGreen://背景颜色绿
        {
          self.btn.backgroundColor = [UIColor colorWithRed:redSlider.value green:slider.value blue:blueSlider.value alpha:1];
        }
            break;
        case backgroundColorBlue://背景颜色蓝
        {
            self.btn.backgroundColor = [UIColor colorWithRed:redSlider.value green:greenSlider.value blue:slider.value alpha:1];
        }
            break;
        case shadowColorRed://阴影颜色红
        {
            self.btn.layer.shadowColor = [UIColor colorWithRed:slider.value green:shadowGreenSlider.value blue:shadowBlueSlider.value alpha:1].CGColor;
        }
            break;

        case shadowColorGreen://阴影颜色绿
        {
            self.btn.layer.shadowColor = [UIColor colorWithRed:shadowRedSlider.value green:slider.value blue:shadowBlueSlider.value alpha:1].CGColor;
        }
            break;
        case shadowColorBlue://阴影颜色蓝
        {
            self.btn.layer.shadowColor = [UIColor colorWithRed:shadowRedSlider.value green:shadowGreenSlider.value blue:slider.value alpha:1].CGColor;
        }
            break;
        case borderColorRed://边框颜色红
        {
            self.btn.layer.borderColor = [UIColor colorWithRed:slider.value green:borderGreenSlider.value blue:borderBlueSlider.value alpha:1].CGColor;
        }
            break;
        case borderColorGreen://边框颜色绿
        {
            self.btn.layer.borderColor = [UIColor colorWithRed:borderRedSlider.value green:slider.value blue:borderBlueSlider.value alpha:1].CGColor;
        }
            break;
        case borderColorBlue://边框颜色蓝
        {
          self.btn.layer.borderColor = [UIColor colorWithRed:borderRedSlider.value green:borderGreenSlider.value blue:slider.value alpha:1].CGColor;
        }
            break;
        case selfAlpha://控件透明度
        {
            self.btn.alpha = 1 - slider.value;
        }
            break;
        default:
            break;
    }

}

- (void)setBtn:(UIButton *)btn{
    _btn = btn;
    xTextFiled.placeholder = [NSString stringWithFormat:@"%.2lf",_btn.frame.origin.x];
    yTextFiled.placeholder = [NSString stringWithFormat:@"%.2lf",_btn.frame.origin.y];
    wTextFiled.placeholder = [NSString stringWithFormat:@"%.2lf",_btn.frame.size.width];
    hTextFiled.placeholder = [NSString stringWithFormat:@"%.2lf",_btn.frame.size.height];
    
    cornerRadioTextFiled.placeholder = [NSString stringWithFormat:@"%.2lf",_btn.layer.cornerRadius];
    
    shadowCornerTextFiled.placeholder = [NSString stringWithFormat:@"%.2lf",_btn.layer.shadowRadius];
    shadowXVlaueTextFiled.placeholder = [NSString stringWithFormat:@"%.2lf",_btn.layer.shadowOffset.width];
    shadowYVlaueTextFiled.placeholder = [NSString stringWithFormat:@"%.2lf",_btn.layer.shadowOffset.height];
    shadowAlphaTextFiled.placeholder = [NSString stringWithFormat:@"%.2lf",_btn.layer.shadowOpacity];
    
    borderCornerVlaue.placeholder = [NSString stringWithFormat:@"%.2lf",_btn.layer.cornerRadius];
    borderWidthVlaue.placeholder = [NSString stringWithFormat:@"%.2lf",_btn.layer.borderWidth];
}
@end
