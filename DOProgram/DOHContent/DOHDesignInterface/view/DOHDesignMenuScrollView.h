//
//  DOHDesignMenuScrollView.h
//  DOProgram
//
//  Created by 彩虹蜗牛 on 2018/1/29.
//  Copyright © 2018年 Dolion.Hou. All rights reserved.
//

typedef NS_ENUM (NSInteger , menuButtonType) {
    moreMenuType,//更多菜单
    saveButtonType,//保存按钮
    backButtonType,//撤销按钮
    existButtonType,//退出编辑
    otherButtonType,//其他待定按钮
};


#import <UIKit/UIKit.h>

@interface DOHDesignMenuScrollView : UIScrollView

@property (nonatomic) void(^DOHDesignMenuBlock) (menuButtonType buttonType);


- (instancetype)initWithFrame:(CGRect)frame;
//打开菜单动画
- (void)showMenu;
//关闭菜动画
- (void)closeMenu;
@end
