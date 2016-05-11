//
//  TestTableViewCell.h
//  FDCellDemo
//
//  Created by 星尘 on 16/5/11.
//  Copyright © 2016年 星尘. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ZBModel;

/** 测试 cell */
@interface TestTableViewCell : UITableViewCell
/** 模型数据 */
@property (nonatomic, strong) ZBModel *model;
@end
