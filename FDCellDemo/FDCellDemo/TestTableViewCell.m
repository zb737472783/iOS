//
//  TestTableViewCell.m
//  FDCellDemo
//
//  Created by 星尘 on 16/5/11.
//  Copyright © 2016年 星尘. All rights reserved.
//

#import "TestTableViewCell.h"
#import "ZBModel.h"
#import <Masonry.h>

@interface TestTableViewCell ()
/** 姓名 */
@property (nonatomic, strong, nonnull) UILabel *name;
/** 时间 */
@property (nonatomic, strong, nonnull) UILabel *time;
/** 信息 */
@property (nonatomic, strong, nonnull) UILabel *msg;
@end

@implementation TestTableViewCell

- (void)awakeFromNib
{
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
	/** 创建子控件 */
	[self creatView];
	/** 设置子控件布局 */
	[self settingViewAutoLayout];
    }
    return self;
}

- (void)creatView
{
    UILabel *nameLabel = [[UILabel alloc] init];
    [self.contentView addSubview:nameLabel];
    self.name = nameLabel;

    UILabel *timeLabel = [[UILabel alloc] init];
    [self.contentView addSubview:timeLabel];
    self.time = timeLabel;

    UILabel *msgLabel = [[UILabel alloc] init];
    msgLabel.numberOfLines = 0;
    [self.contentView addSubview:msgLabel];
    self.msg = msgLabel;
}

- (void)settingViewAutoLayout
{
    NSInteger magin = 4;
    NSInteger padding = 10;

    [self.name mas_makeConstraints:^(MASConstraintMaker *make) {
	make.top.and.left.mas_equalTo(self.contentView).offset(padding);
    }];

    [self.time mas_makeConstraints:^(MASConstraintMaker *make) {
	make.top.mas_equalTo(self.name.mas_top);
	make.left.mas_equalTo(self.name.mas_right).offset(magin);
    }];

    [self.msg mas_makeConstraints:^(MASConstraintMaker *make) {
	make.left.mas_equalTo(self.name.mas_left);
	make.top.mas_equalTo(self.name.mas_bottom).offset(padding);
	make.right.mas_equalTo(self.contentView.mas_right).offset(-padding);
	/** 这里不得不说下,之前少了下面这句布局死活不多,回头仔细读了一遍作者的意思,才明白, cell 里的约束简单说就是要有头有尾 */
	make.bottom.mas_equalTo(self.contentView.mas_bottom).offset(-magin);
    }];
}

- (void)setModel:(ZBModel *)model
{
    _model = model;
    self.name.text = model.name;
    self.time.text = model.time;
    self.msg.text = model.msg;
}

@end
