//
//  DOHSoftwareCollectionViewCell.m
//  DOProgram
//
//  Created by 彩虹蜗牛 on 2018/1/28.
//  Copyright © 2018年 Dolion.Hou. All rights reserved.
//

#import "DOHSoftwareCollectionViewCell.h"
#import "DOHHomeSoftwareModel.h"

@implementation DOHSoftwareCollectionViewCell{
    UIImageView *softwareImageView;//软件图标
    UILabel *softwareName;//软件名称
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
    
}

- (void)creatSubviews{
    
    softwareImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@""]];
    softwareImageView.contentMode = UIViewContentModeScaleAspectFit;
    [self.contentView addSubview:softwareImageView];
    softwareImageView.layer.cornerRadius = 5.5;
    softwareImageView.layer.masksToBounds = YES;

    [softwareImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.width.equalTo(@50);
        make.centerX.equalTo(self.contentView);
        make.top.equalTo(self.contentView).offset(5);
    }];
    
    softwareName = [[UILabel alloc] init];
    [self.contentView addSubview:softwareName];
    [softwareName setText:@"软件园"];
    [softwareName setTextColor:[UIColor blackColor]];
    [softwareName setFont:[UIFont systemFontOfSize:13]];
    [softwareName sizeToFit];
    [softwareName mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.lessThanOrEqualTo(@75);
        make.centerX.equalTo(self.contentView);
        make.top.equalTo(softwareImageView.mas_bottom).offset(10);
    }];

}

- (void)setSubviewsConfigure{
    
}

- (void)setSoftwareModel:(DOHHomeSoftwareModel *)softwareModel{
    _softwareModel = softwareModel;
    [softwareImageView sd_setImageWithURL:nil placeholderImage:[UIImage imageNamed:softwareModel.imageName]];
    softwareName.text = softwareModel.softwareName;
}

@end
