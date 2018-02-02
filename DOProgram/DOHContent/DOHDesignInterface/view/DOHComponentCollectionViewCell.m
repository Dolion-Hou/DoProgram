//
//  DOHComponentCollectionViewCell.m
//  DOProgram
//
//  Created by 彩虹蜗牛 on 2018/1/29.
//  Copyright © 2018年 Dolion.Hou. All rights reserved.
//

#define componentImageViewFrame CGRectMake(0, 10, 40, 40)
#define componentNameLabelFrame CGRectMake(0,80 - 30,40,25)
#define componentNameLabelFont 10

#import "DOHComponentCollectionViewCell.h"

//model
#import "DOHComponentModel.h"

@implementation DOHComponentCollectionViewCell{
    UIImageView *componentImageView;//控件图标
    UILabel *componentName;//控件名称
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
    self.contentView.backgroundColor = [UIColor whiteColor];
    self.backgroundColor = [UIColor whiteColor];
}

- (void)creatSubviews{
    
    componentImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@""]];
    componentImageView.contentMode = UIViewContentModeScaleAspectFit;
    [self.contentView addSubview:componentImageView];
    
    componentImageView.frame = componentImageViewFrame;
    
    componentName = [[UILabel alloc] init];
    [self.contentView addSubview:componentName];
    [componentName setTextColor:[UIColor blackColor]];
    [componentName setFont:[UIFont systemFontOfSize:componentNameLabelFont]];
    [componentName sizeToFit];
    componentName.textAlignment = NSTextAlignmentCenter;
    componentName.frame = componentNameLabelFrame;
}

- (void)setSubviewsConfigure{
    
}

- (void)setComponentDetailModel:(DOHComponentDetailModel *)componentDetailModel{
    _componentDetailModel = componentDetailModel;
    
    [componentImageView sd_setImageWithURL:nil placeholderImage:[UIImage imageNamed:componentDetailModel.componentImageName]];
     
    componentName.text = componentDetailModel.componentNmae;
}

@end
