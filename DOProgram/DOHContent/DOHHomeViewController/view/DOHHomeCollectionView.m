
//
//  DOHHomeCollectionView.m
//  DOProgram
//
//  Created by 彩虹蜗牛 on 2018/1/28.
//  Copyright © 2018年 Dolion.Hou. All rights reserved.
//DOH-Dolion.Hou

#import "DOHHomeCollectionView.h"
#import "DOHSoftwareCollectionViewCell.h"
#import "DOHHomeSoftwareModel.h"

@interface DOHHomeCollectionView() <UICollectionViewDelegate,UICollectionViewDataSource>

@end

@implementation DOHHomeCollectionView{
    NSInteger num;
}
- (instancetype)initWithFrame:(CGRect)frame collectionViewLayout:(UICollectionViewLayout *)layout{
    self = [super initWithFrame:frame collectionViewLayout:layout];
    if (self) {
        [self setConfigure];
        [self creatSubviews];
        [self setSubviewsConfigure];
    }
    return self;
}

- (void)setConfigure{
    self.backgroundColor = [UIColor whiteColor];
    self.delegate = self;
    self.dataSource = self;
    [self registerClass:[DOHSoftwareCollectionViewCell class] forCellWithReuseIdentifier:@"DOHSoftwareCollectionViewCell"];
    num = 0;
}

- (void)creatSubviews{
    
}

- (void)setSubviewsConfigure{
    
}

//collectionViewDelegate and collectionViewDataSource

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

- (NSInteger)collectionView:(nonnull UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return num + 1;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    DOHSoftwareCollectionViewCell *item = [collectionView dequeueReusableCellWithReuseIdentifier:@"DOHSoftwareCollectionViewCell" forIndexPath:indexPath];
    if (indexPath.row == num) {
        DOHHomeSoftwareModel *softwareModel = [[DOHHomeSoftwareModel alloc] init];
        softwareModel.imageName = @"DOH_home_design";
        softwareModel.softwareName = @"创建应用";
        item.softwareModel = softwareModel;
    }
    return item;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    if(self.DOHSelectSoftwareBlock){
        self.DOHSelectSoftwareBlock(indexPath.row == num?creatSoftwareIndex:indexPath.row);
    }
}

@end
