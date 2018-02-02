//
//  DOHDefaultButton.m
//  DOProgram
//
//  Created by Dolion.Hou on 2018/1/19.
//  Copyright © 2018年 Dolion.Hou. All rights reserved.
//

#import "DOHDefaultButton.h"

@implementation DOHDefaultButton

- (instancetype)init{
    self = [super init];
    if (self) {
        [self setConfigure];
        [self creatSubviews];
        [self setSubviewConfigure];
    }
    return self;
}

- (void)setConfigure{
    [self setBackgroundColor:[UIColor blueColor]];
    self.frame = CGRectMake(30, 94, 50, 50);
    self.alpha = 0;
}

- (void)creatSubviews{

}

- (void)setSubviewConfigure{
    
}

@end
