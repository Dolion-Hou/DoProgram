//
//  DOHButtonAttributeTableview.m
//  DOProgram
//
//  Created by Dolion.Hou on 2018/1/19.
//  Copyright © 2018年 Dolion.Hou. All rights reserved.
//

#define attributeNames  @[@"位置",@"尺寸",@"圆角",@"阴影",@"阴影颜色",@"背景颜色",@"图片",@"文字",@"文字颜色",@"文字大小",@"背景图片",@"点击事件",@"动画",@"边框",@"边框颜色",@"边框粗细"]

#import "DOHButtonAttributeTableview.h"

@interface DOHButtonAttributeTableview ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation DOHButtonAttributeTableview

- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style{
    self = [super initWithFrame:frame style:style];
    if(self){
        [self setConfigure];
        [self creatSubviews];
        [self setSubviewsConfigure];
    }
    return self;
}

- (void)setConfigure{
    self.delegate = self;
    self.dataSource = self;
    [self registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    self.backgroundColor = [UIColor lightGrayColor];
    self.layer.cornerRadius = 5;
    self.layer.shadowColor = [UIColor grayColor].CGColor;
    self.layer.shadowOffset = CGSizeMake(3, 3);
    self.layer.shadowRadius = 5;
    self.alpha = 0.5;
}

- (void)creatSubviews{
    
}

- (void)setSubviewsConfigure{
    
}

- (NSInteger)numberOfRowsInSection:(NSInteger)section{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return attributeNames.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    cell.contentView.backgroundColor = [UIColor lightGrayColor];
    cell.textLabel.font = [UIFont systemFontOfSize:10];
    cell.textLabel.textColor = [UIColor whiteColor];
    cell.separatorInset = UIEdgeInsetsMake(0, 0, 0, 0);
    cell.textLabel.text = attributeNames[indexPath.row];
    return cell;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 1, self.frame.size.width, 44)];
    UILabel *titleLabel = [[UILabel alloc] init];
    [headerView addSubview:titleLabel];
    titleLabel.text = @"控件属性";
    titleLabel.font = [UIFont systemFontOfSize:15];
    [titleLabel sizeToFit];
    titleLabel.center = headerView.center;
    return headerView;
}


@end
