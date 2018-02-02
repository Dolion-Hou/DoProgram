//
//  DOHSoftwareCollectionViewCell.h
//  DOProgram
//
//  Created by 彩虹蜗牛 on 2018/1/28.
//  Copyright © 2018年 Dolion.Hou. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DOHHomeSoftwareModel;

@interface DOHSoftwareCollectionViewCell : UICollectionViewCell

@property (nonatomic, strong) DOHHomeSoftwareModel *softwareModel;

- (instancetype)initWithFrame:(CGRect)frame;
@end
