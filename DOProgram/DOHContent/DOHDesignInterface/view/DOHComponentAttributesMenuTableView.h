//
//  DOHComponentAttributesMenuScrollview.h
//  DOProgram
//
//  Created by 彩虹蜗牛 on 2018/2/2.
//  Copyright © 2018年 Dolion.Hou. All rights reserved.
//

typedef NS_ENUM(NSInteger ,attributeType) {
    baseAttributeType,
    contentAttributeType,
    targetAttributeType,
    datasourceAttributeType,
};

#import <UIKit/UIKit.h>

@interface DOHComponentAttributesMenuTableView : UITableView

@property (nonatomic) void(^DOHAttributeBlock) (NSInteger clickType);

- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style;

- (void)hiddenView;

- (void)showView;

@end
