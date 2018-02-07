//
//  DOHComponentCollectionView.m
//  DOProgram
//
//  Created by 彩虹蜗牛 on 2018/1/29.
//  Copyright © 2018年 Dolion.Hou. All rights reserved.
//DOH-元素控件

#define mainViewHeight 105
#define showButtonHeight 20

#define componentImageNames @[@"DOH_design_component_button",@"DOH_design_component_label",@"DOH_design_component_view",@"DOH_design_component_imageView",@"DOH_design_component_tableView",@"DOH_design_component_scrollView",@"DOH_design_component_collectionView",@"DOH_design_component_textView",@"DOH_design_component_textFiled",@"DOH_design_component_pickerView",@"DOH_design_component_slider",@"DOH_design_component_switch",@"DOH_design_component_datePicker"]

#define componentNmaes @[@"Button",@"Label",@"View",@"Imageview",@"TableView",@"ScrollView",@"CollectionView",@"TextView",@"TextField",@"PickerView",@"Slider",@"Switch",@"DatePickView"]


#import "DOHComponentCollectionView.h"

//subviews
#import "DOHComponentCollectionViewCell.h"

//model
#import "DOHComponentModel.h"

@interface DOHComponentCollectionView ()<UICollectionViewDelegate,UICollectionViewDataSource>
//@property (nonatomic, strong) DOHComponentModel *componentModel;
@end

@implementation DOHComponentCollectionView{
    UICollectionView *componentCollectionView;//承载元的collectionView
    UIButton *showButton;//展开菜单button
    UILabel *titleLabel;//view标题
    UICollectionViewFlowLayout *flowLayout;//collectionView流布局
}

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self setConfigure];
        [self creatSubviews];
        [self setSubviewsConfigure];
    }
    return self;
}

- (void)setConfigure{
    self.frame = CGRectMake(0, mainScreenHeight - showButtonHeight, mainScreenWith, mainViewHeight);
}

- (void)creatSubviews{
    showButton = [[UIButton alloc] init];
    [self addSubview:showButton];
    
    componentCollectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0, 20, mainScreenWith, 80) collectionViewLayout:[self setFlowLayout]];
    componentCollectionView.backgroundColor = [UIColor whiteColor];
    [self addSubview:componentCollectionView];
    
}

- (void)setSubviewsConfigure{
    [showButton setImage:[UIImage imageNamed:@"DOH_design_component_up"] forState:UIControlStateNormal];
    showButton.frame = CGRectMake(20, 0, 20, 20);
    [showButton addTarget:self action:@selector(showButtonBeClicked:) forControlEvents:UIControlEventTouchUpInside];
//
    componentCollectionView.delegate = self;
    componentCollectionView.dataSource = self;
    componentCollectionView.showsHorizontalScrollIndicator = NO;
    componentCollectionView.showsVerticalScrollIndicator = NO;
    componentCollectionView.alwaysBounceVertical = NO;
    componentCollectionView.alwaysBounceHorizontal = YES;
    componentCollectionView.contentSize = CGSizeMake(mainScreenWith, 80);
    [componentCollectionView registerClass:[DOHComponentCollectionViewCell class] forCellWithReuseIdentifier:@"DOHComponentCollectionViewCell"];
    componentCollectionView.contentInset = UIEdgeInsetsMake(0, 15, 0, 15);

}

- (void)showComponentCollectionView{
    [UIView animateWithDuration:0.25 animations:^{
        self.frame = CGRectMake(0, mainScreenHeight - mainViewHeight, mainScreenWith, mainViewHeight);
    }];
}

- (void)hidenComponentCollectionView{
    [UIView animateWithDuration:0.25 animations:^{
        self.frame = CGRectMake(0, mainScreenHeight - showButtonHeight, mainScreenWith, mainViewHeight);
    }];
}

- (void)showButtonBeClicked:(UIButton *)sender{
    if (self.frame.origin.y == mainScreenHeight - showButtonHeight) {
        [self showComponentCollectionView];
        [sender setImage:[UIImage imageNamed:@"DOH_design_component_down"] forState:UIControlStateNormal];
    }else{
        [sender setImage:[UIImage imageNamed:@"DOH_design_component_up"] forState:UIControlStateNormal];
        [self hidenComponentCollectionView];
    }
}

- (UICollectionViewFlowLayout *)setFlowLayout{
    flowLayout = [[UICollectionViewFlowLayout alloc] init];
    flowLayout.minimumLineSpacing = 15;
    flowLayout.minimumInteritemSpacing = 35;
    flowLayout.itemSize = CGSizeMake(40, 80);
    flowLayout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    return flowLayout;
}

//collectionViewDelegate and collectionViewDatasources
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return componentNmaes.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    DOHComponentCollectionViewCell *item = [collectionView dequeueReusableCellWithReuseIdentifier:@"DOHComponentCollectionViewCell" forIndexPath:indexPath];
    DOHComponentDetailModel *componentDetailModel = [[DOHComponentDetailModel alloc] init];
    componentDetailModel.componentImageName = componentImageNames[indexPath.row];
    componentDetailModel.componentNmae = componentNmaes[indexPath.row];
    item.componentDetailModel = componentDetailModel;
    return item;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    if (self.DOHComponentSelectedBlock) {
        self.DOHComponentSelectedBlock(indexPath.row);
    }
}

//get method
//- (DOHComponentModel *)componentModel{
//    if (_componentModel == nil) {
//        _componentModel = [[DOHComponentModel alloc] init];
//    }
//    return _componentModel;
//}

@end
