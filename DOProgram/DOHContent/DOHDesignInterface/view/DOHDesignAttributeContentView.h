//
//  DOHDesignAttributeContentView.h
//  DOProgram
//
//  Created by 彩虹蜗牛 on 2018/2/5.
//  Copyright © 2018年 Dolion.Hou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DOHDesignAttributeContentView : UIScrollView
//要操作的对象
@property (nonatomic, strong) UIButton *btn;

- (instancetype)initWithFrame:(CGRect)frame;

- (void)removeContentView;

@end
