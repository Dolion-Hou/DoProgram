//
//  DOHDesignAttributeContentView.m
//  DOProgram
//
//  Created by 彩虹蜗牛 on 2018/2/5.
//  Copyright © 2018年 Dolion.Hou. All rights reserved.
//

#import "DOHDesignAttributeContentView.h"

@implementation DOHDesignAttributeContentView

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
    self.backgroundColor = [UIColor redColor];
}

- (void)creatSubviews{
    
}

- (void)setSubviewsConfigure{
    
}


//method
- (void)removeContentView{
    [self removeFromSuperview];
}
@end
