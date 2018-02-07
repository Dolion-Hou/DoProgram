//
//  DOHDesignAttributeBaseView.h
//  DOProgram
//
//  Created by 彩虹蜗牛 on 2018/2/5.
//  Copyright © 2018年 Dolion.Hou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DOHDesignAttributeBaseView : UIScrollView
//保存
@property (nonatomic) void(^DOHAttributeBaseViewSaveButtonBlock) (void);
//操作对象 button
@property (nonatomic, strong) UIButton *btn;


- (instancetype)initWithFrame:(CGRect)frame;
@end
