//
//  DOHHomeCollectionView.h
//  DOProgram
//
//  Created by 彩虹蜗牛 on 2018/1/28.
//  Copyright © 2018年 Dolion.Hou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DOHHomeCollectionView : UICollectionView

- (instancetype)initWithFrame:(CGRect)frame collectionViewLayout:(UICollectionViewLayout *)layout;
/**
 *index 下标
 *注意 index = creatSoftwareIndex 代表添加应用
 */
@property (nonatomic) void (^DOHSelectSoftwareBlock)(NSInteger index);


@end
