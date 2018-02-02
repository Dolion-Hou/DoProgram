//
//  DOHDesignMenuScrollView.m
//  DOProgram
//
//  Created by 彩虹蜗牛 on 2018/1/29.
//  Copyright © 2018年 Dolion.Hou. All rights reserved.
//

#define buttonImages @[@"DOH_design_menu",@"DOH_design_save",@"DOH_design_back",@"DOH_design_other",@"DOH_design_other"]

#import "DOHDesignMenuScrollView.h"

@interface DOHDesignMenuScrollView ()<UIScrollViewDelegate>

@end

@implementation DOHDesignMenuScrollView

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
    
    self.delegate = self;
    [UIView animateWithDuration:1 animations:^{
        self.frame = CGRectMake(20, 40, 30, 30);
    }];
    self.layer.cornerRadius = 15;
    self.layer.borderWidth = 1;
    self.layer.borderColor = [UIColor grayColor].CGColor;
    
    self.showsHorizontalScrollIndicator = NO;
    self.showsVerticalScrollIndicator = NO;
}

- (void)creatSubviews{
    
    for (NSInteger i = 0; i < 5; i++) {
        UIButton *menuButton = [[UIButton alloc] initWithFrame:CGRectMake(3, 3 + i*27, 24, 24)];
        [self addSubview:menuButton];
        menuButton.layer.borderColor = [UIColor blueColor].CGColor;
        [menuButton setImage:[UIImage imageNamed:buttonImages[i]] forState:UIControlStateNormal];
        menuButton.tag = i;
        [menuButton addTarget:self action:@selector(buttonBeClicked:) forControlEvents:UIControlEventTouchUpInside];
    }
}

- (void)setSubviewsConfigure{
    
}

- (void)buttonBeClicked:(UIButton *)sender{
    if(self.DOHDesignMenuBlock){
        self.DOHDesignMenuBlock(sender.tag);
    }
}

- (void)showMenu{
    [UIView animateWithDuration:0.5 animations:^{
        self.frame = CGRectMake(20, 40, 30, 140);
    }];
}

- (void)closeMenu{
    [UIView animateWithDuration:0.5 animations:^{
        self.frame = CGRectMake(20, 40, 30, 30);
    }];
}



@end
