//
//  DOHAlertController.h
//  DOHDemo
//
//  Created by 彩虹蜗牛 on 2017/6/8.
//  Copyright © 2017年 Dolion.Hou. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol DOHAlertControllerDelegate <NSObject>
- (void)sureAction;
- (void)cancleAction;
@end

typedef enum actionStyle{
    DOHNoneStyle = 1,
    DOHOnlySureStyle,
    DOHOnlyCancelStyle,
    DOHAllActionStyle,
}actionStyle;

@interface DOHAlertController : UIAlertController
@property (nonatomic, assign) actionStyle actionStyle;
@property (nonatomic) BOOL isMaskToBounds;
@property (nonatomic, weak) id<DOHAlertControllerDelegate> delegate;

- (instancetype)initWithTitle:(NSString *)title message:(NSString *)message style:(UIAlertControllerStyle)style;
@end

