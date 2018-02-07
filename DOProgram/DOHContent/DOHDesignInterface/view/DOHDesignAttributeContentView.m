//
//  DOHDesignAttributeContentView.m
//  DOProgram
//
//  Created by 彩虹蜗牛 on 2018/2/5.
//  Copyright © 2018年 Dolion.Hou. All rights reserved.
//

#import "DOHDesignAttributeContentView.h"

@implementation DOHDesignAttributeContentView{
    UIButton *saveButton;//保存按钮
    UILabel *titleLabel;//标题
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
    
}


//method
- (void)removeContentView{
    [self removeFromSuperview];
}

- (void)saveButtonBeClicked:(UIButton *)sender{
    [self removeFromSuperview];
    if (self.DOHContentSaveButtonBlock) {
        self.DOHContentSaveButtonBlock();
    }
}
@end
