//
//  BaseController.m
//  AutoLayoutDemo
//
//  Created by 星尘 on 16/6/6.
//  Email : zb737472783@me.com
//  Copyright © 2016年 星尘. All rights reserved.
//

#import "BaseController.h"

@interface BaseController ()

@end

@implementation BaseController

#pragma mark - 延迟加载

#pragma mark - 生命周期
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - 代理

#pragma mark - 方法

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
