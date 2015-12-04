//
//  ColorView.h
//  视图生命周期
//
//  Created by 星尘 on 15/12/4.
//  Copyright © 2015年 星尘. All rights reserved.
//

#import <UIKit/UIKit.h>
/**
 *    创建自定义视图,测试设置 frame 的正确时机
 */
@interface ColorView : UIView
@property (nonatomic, assign) BOOL isChangeColor;
@property (nonatomic, strong, nonnull) UIImageView *colorViewIconImageView;
@end
