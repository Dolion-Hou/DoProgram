//
//  DOHAlertController.m
//  DOHDemo
//
//  Created by 彩虹蜗牛 on 2017/6/8.
//  Copyright © 2017年 Dolion.Hou. All rights reserved.
//DOH-alertController

#import "DOHAlertController.h"

@interface DOHAlertController ()

@end

@implementation DOHAlertController{
}
- (instancetype)initWithTitle:(NSString *)title message:(NSString *)message style:(UIAlertControllerStyle)style{
    self = [DOHAlertController alertControllerWithTitle:title message:message preferredStyle:style];
    if (self) {
        [self creatView];
    }
    return self;
}

- (void)creatView{
    UIAlertAction * sureAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        if ([self.delegate respondsToSelector:@selector(sureAction)]) {
            [self.delegate sureAction];
        }
    }];
    
    UIAlertAction * cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
        if ([self.delegate respondsToSelector:@selector(cancleAction)]) {
            [self.delegate cancleAction];
        }
    }];
    
    [self addActionSureAction:sureAction cancelAction:cancelAction];
}

- (void)addActionSureAction:(UIAlertAction *)sureAction cancelAction:(UIAlertAction *)cancelAction{
    if (DOHNoneStyle == self.actionStyle) {
    }else if (DOHOnlySureStyle == self.actionStyle){
        [self addAction:sureAction];
    }else if (DOHOnlyCancelStyle == self.actionStyle){
        [self addAction:cancelAction];
    }else if (DOHAllActionStyle == self.actionStyle){
        [self addAction:cancelAction];
        [self addAction:sureAction];
    }
}

- (void)setActionStyle:(actionStyle)actionStyle{
    _actionStyle = actionStyle;
    [self creatView];
}

- (void)setIsMaskToBounds:(BOOL)isMaskToBounds{
    if (YES) {
        self.view.layer.masksToBounds = YES;
    }
}

@end
