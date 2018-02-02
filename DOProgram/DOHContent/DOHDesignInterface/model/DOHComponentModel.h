//
//  DOHComponentModel.h
//  DOProgram
//
//  Created by 彩虹蜗牛 on 2018/1/29.
//  Copyright © 2018年 Dolion.Hou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DOHComponentModel : NSObject
//数据集合
@property (nonatomic, strong) NSMutableArray *componentArrays;
@end


@interface DOHComponentDetailModel : NSObject
//图片名称
@property (nonatomic, copy) NSString *componentImageName;
//元素名称
@property (nonatomic, copy) NSString *componentNmae;
@end
