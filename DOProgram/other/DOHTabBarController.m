//
//  DOHTabBarController.m
//  DOProgram
//
//  Created by 彩虹蜗牛 on 2018/1/28.
//  Copyright © 2018年 Dolion.Hou. All rights reserved.
//

#import "DOHTabBarController.h"
#import "DOHHomeViewController.h"//首页

@interface DOHTabBarController ()

@end

@implementation DOHTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setConfigure];
    [self creatSubviews];
    [self setSubviewsConfigure];
}

- (void)setConfigure{
    
}

- (void)creatSubviews{
//home
    DOHHomeViewController *homeVC = [[DOHHomeViewController alloc] init];
    UINavigationController *homeNav = [[UINavigationController alloc] initWithRootViewController:homeVC];
    homeNav.tabBarItem.title = @"软件园";
    homeNav.tabBarItem.image = [UIImage imageNamed:@"DOH_tabbar_Software"];
//说明
    UIViewController *introVC = [[UIViewController alloc] init];
    UINavigationController *introNav = [[UINavigationController alloc] initWithRootViewController:introVC];
    introVC.view.backgroundColor = [UIColor yellowColor];
    introNav.tabBarItem.title = @"说明";
    introNav.tabBarItem.image = [UIImage imageNamed:@"DOH_tabar_intro"];
//我的
    UIViewController *mineVC = [[UIViewController alloc] init];
    mineVC.view.backgroundColor = [UIColor lightGrayColor];
    UINavigationController *mineNav = [[UINavigationController alloc] initWithRootViewController:mineVC];
    mineNav.tabBarItem.title = @"我的";
    mineNav.tabBarItem.image = [UIImage imageNamed:@"DOH_tabbar_mine"];
    
    [self setViewControllers:@[homeNav,introNav,mineNav] animated:YES];
}

- (void)setSubviewsConfigure{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
