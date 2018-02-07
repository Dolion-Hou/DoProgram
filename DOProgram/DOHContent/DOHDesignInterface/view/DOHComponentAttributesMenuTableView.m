//
//  DOHComponentAttributesMenuScrollview.m
//  DOProgram
//
//  Created by 彩虹蜗牛 on 2018/2/2.
//  Copyright © 2018年 Dolion.Hou. All rights reserved.
//DOH-元素属性菜单

#define names @[@"基本属性",@"内容设置",@"响应事件",@"数据源"]
#define imageNames @[@"DOH_design_attribute_base",@"DOH_design_attribute_content",@"DOH_design_attribute_Clicked",@"DOH_design_attribute_datesource"]

#import "DOHComponentAttributesMenuTableView.h"

@interface DOHComponentAttributesMenuTableView ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation DOHComponentAttributesMenuTableView

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
    self.backgroundColor = [UIColor whiteColor];
    self.delegate = self;
    self.dataSource = self;
    [self registerClass:[UITableViewCell class] forCellReuseIdentifier:@"DOHComponentAttributesMenuTableView"];
    self.frame = CGRectMake(mainScreenWith-130, 30, 110, 176);
    self.tableFooterView = [UIView new];
    self.separatorInset =UIEdgeInsetsMake(0, 0, 0, 0);
    self.layer.borderColor = [UIColor lightGrayColor].CGColor;
    self.layer.borderWidth = 0.5;
    self.layer.cornerRadius = 5;
    
}
- (void)creatSubviews{
    
}

- (void)setSubviewsConfigure{
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}   

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return names.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"DOHComponentAttributesMenuTableView" forIndexPath:indexPath];
    cell.textLabel.text = names[indexPath.row];
    cell.textLabel.font = [UIFont systemFontOfSize:10];
    [cell.imageView sd_setImageWithURL:nil placeholderImage:[UIImage imageNamed:imageNames[indexPath.row]]];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (self.DOHAttributeBlock) {
        self.DOHAttributeBlock(indexPath.row);
    }
}

- (void)hiddenView{
    [UIView animateWithDuration:0.5 animations:^{
        self.frame = CGRectMake(mainScreenWith, 30, 110, 176);
    }];
}

- (void)showView{
    [UIView animateWithDuration:0.5 animations:^{
        self.frame = CGRectMake(mainScreenWith-130, 30, 110, 176);
    }];
}


@end
