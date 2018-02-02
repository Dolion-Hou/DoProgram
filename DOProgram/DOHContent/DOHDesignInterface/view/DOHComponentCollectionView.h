//
//  DOHComponentCollectionView.h
//  DOProgram
//
//  Created by 彩虹蜗牛 on 2018/1/29.
//  Copyright © 2018年 Dolion.Hou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DOHComponentCollectionView : UIView

@property (nonatomic) void(^DOHComponentSelectedBlock) (NSInteger index);


- (instancetype)initWithFrame:(CGRect)frame;

//控件属性改变方法
//显示
- (void)showComponentCollectionView;
//隐藏
- (void)hidenComponentCollectionView;
@end
