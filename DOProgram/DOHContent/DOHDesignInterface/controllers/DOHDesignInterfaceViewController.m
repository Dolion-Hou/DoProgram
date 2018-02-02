//
//  DOHDesignInterfaceViewController.m
//  DOProgram
//
//  Created by 彩虹蜗牛 on 2018/1/28.
//  Copyright © 2018年 Dolion.Hou. All rights reserved.
//DOH-设计页面

#import "DOHDesignInterfaceViewController.h"

//subviews
#import "DOHDesignMenuScrollView.h"//菜单
#import "DOHComponentCollectionView.h"//控件列表
#import "DOHButtonAttributeTableview.h"//button属性tableview
#import "DOHDefaultButton.h"//button默认Button



@interface DOHDesignInterfaceViewController ()<DOHAlertControllerDelegate>
//菜单
@property (nonatomic, strong) DOHDesignMenuScrollView *menuScrollView;
//控件列表
@property (nonatomic, strong) DOHComponentCollectionView *componentCollectionView;
//添加的默认button
@property (nonatomic, strong) DOHDefaultButton *defaultButton;
//button的属性列表
@property (nonatomic, strong) DOHButtonAttributeTableview *attributeTableView;
@end

@implementation DOHDesignInterfaceViewController{
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setConfigure];
    [self creatSubviews];
    [self setSubviewsConfigure];
}

- (void)setConfigure{
    self.view.backgroundColor = [UIColor whiteColor];
    [self.tabBarController setHidesBottomBarWhenPushed:YES];
    [self.navigationController setHidesBottomBarWhenPushed:YES];
}

- (void)creatSubviews{

    _menuScrollView = [[DOHDesignMenuScrollView alloc] initWithFrame:CGRectZero];
    [self.view addSubview:_menuScrollView];
    [self.view bringSubviewToFront:_menuScrollView];
    [self setMenuScrollView];
    
//
    _componentCollectionView = [[DOHComponentCollectionView alloc] initWithFrame:CGRectZero];
    [self.view addSubview:_componentCollectionView];
    
    [self selectedComponent];
}

- (void)setSubviewsConfigure{

}
//菜单按钮点击
- (void)setMenuScrollView{
    __weak typeof (self)weakSelf = self;
    _menuScrollView.DOHDesignMenuBlock = ^(menuButtonType buttonType) {
        switch (buttonType) {
            case moreMenuType:{
                if (weakSelf.menuScrollView.frame.size.height > 30) {
                    [weakSelf.menuScrollView closeMenu];
                }else{
                    [weakSelf.menuScrollView showMenu];
                }
            }
                break;
            case saveButtonType:{
                DOHAlertController *alerViewController = [[DOHAlertController alloc] initWithTitle:@"操作提示" message:@"确认保存程序，并退出编辑吗？" style:UIAlertControllerStyleAlert];
                [weakSelf presentViewController:alerViewController animated:YES completion:nil];
                alerViewController.actionStyle = DOHAllActionStyle;
                alerViewController.delegate = weakSelf;
                alerViewController.isMaskToBounds = YES;
            }
                break;
            case backButtonType:
                
                break;
                
            default:
                break;
        }
    };
}
//选择控件
- (void)selectedComponent{
    
    __weak typeof (self)weakSelf = self;
    _componentCollectionView.DOHComponentSelectedBlock = ^(NSInteger index) {
        switch (index) {
            case 0:{
                weakSelf.defaultButton = [[DOHDefaultButton alloc] init];
                [weakSelf.view addSubview:weakSelf.defaultButton];
                
                weakSelf.attributeTableView = [[DOHButtonAttributeTableview alloc] initWithFrame:CGRectMake(95, 94,mainScreenWith - 95-30 , 0) style:UITableViewStylePlain];
                [weakSelf.view addSubview:weakSelf.attributeTableView];
                
                [UIView animateWithDuration:0.5 animations:^{
                    weakSelf.defaultButton.alpha = 1;
                }completion:^(BOOL finished) {
                    [UIView animateWithDuration:0.5 animations:^{
                        weakSelf.attributeTableView.frame = CGRectMake(95, 94,mainScreenWith - 95-30 , mainScreenHeight - 94-30);
                    }];
                }];
//
//                    [attributeTableView removeFromSuperview];
//                    [defaultButton removeFromSuperview];
//                    attributeTableView = nil;
//                    defaultButton = nil;
//                    [self addSubviewsButton];
            }
                break;
            case 1:
                
                break;
            case 2:
                
                break;
            case 3:
                
                break;
            case 4:
                
                break;
            case 5:
                
                break;
            case 6:
                
                break;
            default:
                break;
        }
    };
}

- (void)addSubviewsButton{
    
}

//DOHAlertViewControllerDelegate
- (void)cancleAction {
}

- (void)sureAction {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
