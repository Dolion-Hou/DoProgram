//
//  DOHDesignAttributeContentTableView.m
//  DOProgram
//
//  Created by 彩虹蜗牛 on 2018/2/9.
//  Copyright © 2018年 Dolion.Hou. All rights reserved.
//

#define selectedImages @[@"DOH_design_contentAttribute_imageModel_unSelected",@"DOH_design_contentAttribute_imageModel_Selected"]

#import "DOHDesignAttributeContentTableView.h"

@interface DOHDesignAttributeContentTableView ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation DOHDesignAttributeContentTableView{
    NSInteger index;
}

- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style{
    self = [super initWithFrame:frame style:style];
    if (self) {
        [self setConfigure];
        [self creatSubviews];
        [self setSubviewsConfigure];
    }
    return self;
}

- (void)setConfigure{
    self.delegate = self;
    self.dataSource = self;
    [self registerClass:[UITableViewCell class] forCellReuseIdentifier:@"DOHDesignAttributeContentTableView"];
    self.showsVerticalScrollIndicator = NO;
    self.showsHorizontalScrollIndicator = NO;
    self.separatorInset = UIEdgeInsetsMake(0, 0, 0, 0);
    self.bounces = NO;
    self.layer.borderColor = [UIColor grayColor].CGColor;
    self.layer.borderWidth = 0.5;
    self.layer.cornerRadius = 5;
    
    index = 0;
}

- (void)creatSubviews{
    
}

- (void)setSubviewsConfigure{
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return imaegViewModelsArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DOHDesignAttributeContentTableView" forIndexPath:indexPath];
    [cell.imageView setImage:[UIImage imageNamed:indexPath.row == index?selectedImages.lastObject:selectedImages.firstObject]];
    cell.textLabel.text = imaegViewModelsArray[indexPath.row];
    cell.textLabel.font = [UIFont systemFontOfSize:8];
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    index = indexPath.row;
    if (self.DOHDesignContentAttributeBlock) {
        self.DOHDesignContentAttributeBlock(indexPath.row);
    }
    [self reloadData];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 25;
}
@end
