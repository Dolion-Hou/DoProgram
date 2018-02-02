//
//  DOHHomeViewController.m
//  DOProgram
//
//  Created by 彩虹蜗牛 on 2018/1/17.
//  Copyright © 2018年 Dolion.Hou. All rights reserved.
//DOH-Dolion.Hou

#import "DOHHomeViewController.h"

//pushViewController
#import "DOHDesignInterfaceViewController.h"//设计界面

//subviews
#import "DOHHomeCollectionView.h"//collectionView
#import "DOHSoftwareFlowLayout.h"//flowLayout

@interface DOHHomeViewController ()

@end


@implementation DOHHomeViewController{
    NSArray *attributeName;
    DOHHomeCollectionView *homeCollectionView;//collectionView
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setConfigure];
    [self creatSubviews];
    [self setSbuviewsConfigure];
}

- (void)setConfigure{
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = @"Dolion.Hou";
    
}

- (void)creatSubviews{
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"添加" style:UIBarButtonItemStylePlain target:self action:@selector(addButton:)];
//
    homeCollectionView = [[DOHHomeCollectionView alloc] initWithFrame:self.view.bounds collectionViewLayout:[DOHSoftwareFlowLayout new]];
    [self.view addSubview:homeCollectionView];
    [self collectionViewCellBeClicked];
}

- (void)setSbuviewsConfigure{
    
}

- (void)collectionViewCellBeClicked{
    __weak typeof (self)weakSelf = self;
    homeCollectionView.DOHSelectSoftwareBlock = ^(NSInteger index) {
        if (index == creatSoftwareIndex) {
            DOHDesignInterfaceViewController *designInterfaceVC = [[DOHDesignInterfaceViewController alloc] init];
            [weakSelf.navigationController presentViewController:designInterfaceVC animated:YES completion:nil];
        }
    };
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

- (void)addButton:(UIButton *)sender{
   
}

   
@end
