//
//  DOHDesignAttributeContentView.m
//  DOProgram
//
//  Created by 彩虹蜗牛 on 2018/2/5.
//  Copyright © 2018年 Dolion.Hou. All rights reserved.
//

#define ownerWidth mainScreenWith - 160

#import "DOHDesignAttributeContentView.h"

@interface DOHDesignAttributeContentView() <UITextFieldDelegate>

@end

@implementation DOHDesignAttributeContentView{
    UIButton *saveButton;//保存按钮
    UILabel *titleLabel;//标题
    UILabel *imageLabel;//按钮图片设置
    UIButton *buttonImageButton;//添加图片的按钮
    UILabel *backgroundImageLabel;//背景图片设置
    UIButton *backgroundImageButton;//添加背景图片按钮
    UILabel *buttonTextLabel;//按钮文字
    UITextField *buttonTextTextFiled;//按钮文字输入框
    UILabel *labelLineNum;//文字是否换行
    UISwitch *lineNumSwitch;//是否换行开关
    UILabel *textFontLabel;//文字大小
    UITextField *textFontTextFiled;//文字大小设置
    UILabel *textColorLabel;//文字颜色
    UILabel *textColorRedLabel;//文字颜色红色
    UILabel *textColorGreenLabel;//文字颜色绿色
    UILabel *textColorBlueLabel;//文字颜色蓝色
    UISlider *textColorRed;//文字颜色红色
    UISlider *textColorGreen;//文字颜色绿色
    UISlider *textColorBlue;//文字颜色蓝色
    UILabel *imageModelLabel;//图片填充模式
    
//    UIViewContentModeScaleToFill,
//    UIViewContentModeScaleAspectFit,      // contents scaled to fit with fixed aspect. remainder is transparent
//    UIViewContentModeScaleAspectFill,     // contents scaled to fill with fixed aspect. some portion of content may be clipped.
//    UIViewContentModeRedraw,              // redraw on bounds change (calls -setNeedsDisplay)
//    UIViewContentModeCenter,              // contents remain same size. positioned adjusted.
//    UIViewContentModeTop,
//    UIViewContentModeBottom,
//    UIViewContentModeLeft,
//    UIViewContentModeRight,
//    UIViewContentModeTopLeft,
//    UIViewContentModeTopRight,
//    UIViewContentModeBottomLeft,
//    UIViewContentModeBottomRight,
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
    self.frame = CGRectMake(90, 50, ownerWidth, mainScreenHeight - 180);
    self.layer.borderColor = [UIColor grayColor].CGColor;
    self.layer.borderWidth = 0.75;
    self.layer.cornerRadius = 5;
    self.userInteractionEnabled = YES;
    self.contentSize = CGSizeMake(ownerWidth, mainScreenHeight+200);
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
    imageLabel = [[UILabel alloc] init];
    [self addSubview:imageLabel];
//
    buttonImageButton = [[UIButton alloc] init];
    [self addSubview:buttonImageButton];
//
    backgroundImageLabel = [[UILabel alloc] init];
    [self addSubview:backgroundImageLabel];
//
    backgroundImageButton = [[UIButton alloc] init];
    [self addSubview:backgroundImageButton];
//
    buttonTextLabel = [[UILabel alloc] init];
    [self addSubview:buttonTextLabel];
//
    buttonTextTextFiled = [[UITextField alloc] init];
    [self addSubview:buttonTextTextFiled];
//
    labelLineNum = [[UILabel alloc] init];
    [self addSubview:labelLineNum];
//
    lineNumSwitch = [[UISwitch alloc] init];
    [self addSubview:lineNumSwitch];
//
    textFontLabel = [[UILabel alloc] init];
    [self addSubview:textFontLabel];
//
    textFontTextFiled = [[UITextField alloc] init];
    [self addSubview:textFontTextFiled];
//
    textColorLabel = [[UILabel alloc] init];
    [self addSubview:textColorLabel];
//
    textColorRedLabel = [[UILabel alloc] init];
    [self addSubview:textColorRedLabel];
//
    textColorGreenLabel = [[UILabel alloc] init];
    [self addSubview:textColorGreenLabel];
//
    textColorBlueLabel = [[UILabel alloc] init];
    [self addSubview:textColorBlueLabel];
//
    textColorRed = [[UISlider alloc] init];
    [self addSubview:textColorRed];
//
    textColorGreen = [[UISlider alloc] init];
    [self addSubview:textColorGreen];
//
    textColorBlue = [[UISlider alloc] init];
    [self addSubview:textColorBlue];
//
    imageModelLabel = [[UILabel alloc] init];
    [self addSubview:imageModelLabel];

    
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
    [titleLabel setText:@"内容设置"];
    [titleLabel setTextColor:[UIColor blackColor]];
    [titleLabel setFont:[UIFont systemFontOfSize:13]];
    [titleLabel sizeToFit];
    [titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self);
        make.centerY.equalTo(saveButton);
    }];
//
    [imageLabel setText:@"按钮图片:"];
    [imageLabel setTextColor:[UIColor blackColor]];
    [imageLabel setFont:[UIFont systemFontOfSize:13]];
    [imageLabel sizeToFit];
    [imageLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self).offset(10);
        make.top.equalTo(titleLabel.mas_bottom).offset(20);
    }];
//
    buttonImageButton.layer.cornerRadius = 5;
    buttonImageButton.layer.masksToBounds = YES;
    [buttonImageButton setImage:[UIImage imageNamed:@"DOH_design_content_addImageButton"] forState:UIControlStateNormal];
    
    [buttonImageButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(imageLabel);
        make.centerX.equalTo(titleLabel);
        make.width.height.equalTo(@30);
    }];
    [buttonImageButton addTarget:self action:@selector(saveButtonBeClicked:) forControlEvents:UIControlEventTouchUpInside];
//
    [backgroundImageLabel setText:@"背景图片:"];
    [backgroundImageLabel setTextColor:[UIColor blackColor]];
    [backgroundImageLabel setFont:[UIFont systemFontOfSize:13]];
    [backgroundImageLabel sizeToFit];
    [backgroundImageLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self).offset(10);
        make.top.equalTo(imageLabel.mas_bottom).offset(20);
    }];
//
    backgroundImageButton.layer.cornerRadius = 5;
    backgroundImageButton.layer.masksToBounds = YES;
    [backgroundImageButton setImage:[UIImage imageNamed:@"DOH_design_content_addImageButton"] forState:UIControlStateNormal];
    
    [backgroundImageButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(backgroundImageLabel);
        make.centerX.equalTo(titleLabel);
        make.width.height.equalTo(@30);
    }];
    [backgroundImageButton addTarget:self action:@selector(saveButtonBeClicked:) forControlEvents:UIControlEventTouchUpInside];
//
    [buttonTextLabel setText:@"按钮文字:"];
    [buttonTextLabel setTextColor:[UIColor blackColor]];
    [buttonTextLabel setFont:[UIFont systemFontOfSize:13]];
    [buttonTextLabel sizeToFit];
    [buttonTextLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self).offset(10);
        make.top.equalTo(backgroundImageLabel.mas_bottom).offset(20);
    }];
//
    buttonTextTextFiled.placeholder = @"0.0";
    buttonTextTextFiled.font = [UIFont systemFontOfSize:12];
    buttonTextTextFiled.delegate = self;
    buttonTextTextFiled.layer.cornerRadius = 3;
    buttonTextTextFiled.layer.borderColor = [UIColor lightGrayColor].CGColor;
    buttonTextTextFiled.layer.borderWidth = 0.5;
    [buttonTextTextFiled mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(titleLabel);
        make.centerY.equalTo(buttonTextLabel);
        make.width.equalTo(@50);
        make.height.equalTo(@20);
    }];
//
    [labelLineNum setText:@"文字换行:"];
    [labelLineNum setTextColor:[UIColor blackColor]];
    [labelLineNum setFont:[UIFont systemFontOfSize:13]];
    [labelLineNum sizeToFit];
    [labelLineNum mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self).offset(10);
        make.top.equalTo(buttonTextLabel.mas_bottom).offset(20);
    }];
//
    lineNumSwitch.on = NO;
    [lineNumSwitch mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(labelLineNum);
        make.centerX.equalTo(titleLabel);
    }];
//
    [textFontLabel setText:@"文字大小:"];
    [textFontLabel setTextColor:[UIColor blackColor]];
    [textFontLabel setFont:[UIFont systemFontOfSize:13]];
    [textFontLabel sizeToFit];
    [textFontLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self).offset(10);
        make.top.equalTo(labelLineNum.mas_bottom).offset(20);
    }];
//
    textFontTextFiled.placeholder = @"0.0";
    textFontTextFiled.font = [UIFont systemFontOfSize:12];
    textFontTextFiled.delegate = self;
    textFontTextFiled.layer.cornerRadius = 3;
    textFontTextFiled.layer.borderColor = [UIColor lightGrayColor].CGColor;
    textFontTextFiled.layer.borderWidth = 0.5;
    [textFontTextFiled mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(titleLabel);
        make.centerY.equalTo(textFontLabel);
        make.width.equalTo(@50);
        make.height.equalTo(@20);
    }];
//
    [textColorLabel setText:@"文字颜色"];
    [textColorLabel setTextColor:[UIColor blackColor]];
    [textColorLabel setFont:[UIFont systemFontOfSize:13]];
    [textColorLabel sizeToFit];
    [textColorLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(titleLabel);
        make.top.equalTo(textFontLabel.mas_bottom).offset(20);
    }];
//
    [textColorRedLabel setText:@"红色:"];
    [textColorRedLabel setTextColor:[UIColor blackColor]];
    [textColorRedLabel setFont:[UIFont systemFontOfSize:13]];
    [textColorRedLabel sizeToFit];
    [textColorRedLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self).offset(10);
        make.top.equalTo(textColorLabel.mas_bottom).offset(15);
    }];
//
    [textColorGreenLabel setText:@"绿色:"];
    [textColorGreenLabel setTextColor:[UIColor blackColor]];
    [textColorGreenLabel setFont:[UIFont systemFontOfSize:13]];
    [textColorGreenLabel sizeToFit];
    [textColorGreenLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self).offset(10);
        make.top.equalTo(textColorRedLabel.mas_bottom).offset(15);
    }];
//
    [textColorBlueLabel setText:@"蓝色:"];
    [textColorBlueLabel setTextColor:[UIColor blackColor]];
    [textColorBlueLabel setFont:[UIFont systemFontOfSize:13]];
    [textColorBlueLabel sizeToFit];
    [textColorBlueLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self).offset(10);
        make.top.equalTo(textColorGreenLabel.mas_bottom).offset(15);
    }];
//
//    textColorRed.tag = shadowColorRed;
    [textColorRed addTarget:self action:@selector(sliderValueChange:) forControlEvents:UIControlEventValueChanged];
    textColorRed.maximumValue = 1;
    textColorRed.value = 0;
    [textColorRed setThumbImage:[UIImage imageNamed:@"DOH_slider_R"] forState:UIControlStateNormal];
    [textColorRed mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(textColorRedLabel.mas_right).offset(10);
        make.width.equalTo(@(ownerWidth - 60));
        make.centerY.equalTo(textColorRedLabel);
    }];
    //
//    shadowGreenSlider.tag = shadowColorGreen;
    [textColorGreen addTarget:self action:@selector(sliderValueChange:) forControlEvents:UIControlEventValueChanged];
    textColorGreen.maximumValue = 1;
    textColorGreen.value = 0;
    [textColorGreen setThumbImage:[UIImage imageNamed:@"DOH_slider_G"] forState:UIControlStateNormal];
    [textColorGreen mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(textColorGreenLabel.mas_right).offset(10);
        make.width.equalTo(@(ownerWidth - 60));
        make.centerY.equalTo(textColorGreenLabel);
    }];
    //
//    shadowBlueSlider.tag = shadowColorBlue;
    [textColorBlue addTarget:self action:@selector(sliderValueChange:) forControlEvents:UIControlEventValueChanged];
    textColorBlue.maximumValue = 1;
    textColorBlue.value = 0;
    [textColorBlue setThumbImage:[UIImage imageNamed:@"DOH_slider_B"] forState:UIControlStateNormal];
    [textColorBlue mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(textColorBlueLabel.mas_right).offset(10);
        make.width.equalTo(@(ownerWidth - 60));
        make.centerY.equalTo(textColorBlueLabel);
    }];
//
    [imageModelLabel setText:@"图片填充模式"];
    [imageModelLabel setTextColor:[UIColor blackColor]];
    [imageModelLabel setFont:[UIFont systemFontOfSize:13]];
    [imageModelLabel sizeToFit];
    [imageModelLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(titleLabel);
        make.top.equalTo(textColorBlueLabel.mas_bottom).offset(20);
    }];

    

    
}


//method
- (void)removeContentView{
    [self removeFromSuperview];
}

- (void)sliderValueChange:(UISlider *)slider{
    
}

- (void)saveButtonBeClicked:(UIButton *)sender{
    [self removeFromSuperview];
    if (self.DOHContentSaveButtonBlock) {
        self.DOHContentSaveButtonBlock();
    }
}
@end
