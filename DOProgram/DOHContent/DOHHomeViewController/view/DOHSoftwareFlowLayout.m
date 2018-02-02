//
//  DOHSoftwareFlowLayout.m
//  DOProgram
//
//  Created by 彩虹蜗牛 on 2018/1/28.
//  Copyright © 2018年 Dolion.Hou. All rights reserved.
//

#import "DOHSoftwareFlowLayout.h"

@implementation DOHSoftwareFlowLayout

- (instancetype)init{
    self = [super init];
    if (self) {
        [self setConfigure];
    }
    return self;
}

- (void)setConfigure{
    self.minimumLineSpacing = 15;
    self.minimumInteritemSpacing = 10;
    self.itemSize = CGSizeMake(75, 80);
    self.sectionInset = UIEdgeInsetsMake(15, 20, 25, 20);
}

@end
