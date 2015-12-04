//
//  ColorView.m
//  视图生命周期
//
//  Created by 星尘 on 15/12/4.
//  Copyright © 2015年 星尘. All rights reserved.
//

#import "ColorView.h"

@implementation ColorView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        /** colorViewIconImageView */
        self.colorViewIconImageView = [[UIImageView alloc] init];
        self.colorViewIconImageView.backgroundColor = [UIColor yellowColor];
        [self addSubview:self.colorViewIconImageView];
        self.isChangeColor = NO;
    }
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    /**
     *    这里设置子类控件的所有 frame
     */
    self.colorViewIconImageView.frame = CGRectMake(15.0f, 100.0f, 120.0f, 60.0f);
    if (self.isChangeColor) {
        self.colorViewIconImageView.backgroundColor = [UIColor redColor];
    }
}

@end
