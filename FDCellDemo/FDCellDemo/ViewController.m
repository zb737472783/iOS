//
//  ViewController.m
//  FDCellDemo
//
//  Created by 星尘 on 16/5/11.
//  Copyright © 2016年 星尘. All rights reserved.
//

#import "TestTableViewCell.h"
#import "ViewController.h"
#import "ZBModel.h"
#import <Masonry.h>
#import <UITableView+FDTemplateLayoutCell.h>

static NSString *identify = @"TestCell";

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) NSMutableArray *models;
@property (nonatomic, strong) UITableView *mainView;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    self.view.backgroundColor = [UIColor whiteColor];

    self.models = [NSMutableArray arrayWithCapacity:0];

    ZBModel *model = [[ZBModel alloc] init];
    model.name = @"我是名字我是名字我是名字";
    model.time = @"2016年05月11日10:34:23";
    model.msg = @"我也不知道写啥,就是要写很长很长的东西来占位.我也不知道写啥,就是要写很长很长的东西来占位.我也不知道写啥,就是要写很长很长的东西来占位.我也不知道写啥,就是要写很长很长的东西来占位.我也不知道写啥,就是要写很长很长的东西来占位.我也不知道写啥,就是要写很长很长的东西来占位.";
    [self.models addObject:model];
    [self.models addObject:model];
    [self.models addObject:model];

    self.mainView = [[UITableView alloc] init];
    self.mainView.backgroundColor = [UIColor blackColor];
    self.mainView.delegate = self;
    self.mainView.dataSource = self;
    [self.mainView registerClass:[TestTableViewCell class] forCellReuseIdentifier:identify];
    [self.view addSubview:self.mainView];
    [self.mainView mas_makeConstraints:^(MASConstraintMaker *make) {
	make.top.mas_equalTo(self.view.mas_top).offset(64);
	make.left.mas_equalTo(self.view.mas_left);
	make.right.mas_equalTo(self.view.mas_right);
	make.bottom.mas_equalTo(self.view.mas_bottom);
    }];

    [self.mainView reloadData];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Delegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.models.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"%f",  [self.mainView fd_heightForCellWithIdentifier:identify cacheByKey:indexPath configuration:^(TestTableViewCell *cell) {
        [self setupModelOfCell:cell atIndexPath:indexPath];
    }]);
    return [self.mainView fd_heightForCellWithIdentifier:identify cacheByKey:indexPath configuration:^(TestTableViewCell *cell) {
	[self setupModelOfCell:cell atIndexPath:indexPath];
    }];
    //return 150;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    TestTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    [self setupModelOfCell:cell atIndexPath:indexPath];
    return cell;
}

- (void)setupModelOfCell:(TestTableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath
{
    cell.fd_enforceFrameLayout = NO;
    cell.model = [self.models objectAtIndex:indexPath.row];
}

@end
