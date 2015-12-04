//
//  ViewController.m
//  视图生命周期
//
//  Created by 星尘 on 15/12/4.
//  Copyright © 2015年 星尘. All rights reserved.
//

#import "ColorView.h"
#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, strong, nonnull) ColorView *colorView;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    /** colorViewIconImageView */
    self.colorView = [[ColorView alloc] initWithFrame:CGRectMake(0, 0, 300, 300)];
    [self.view addSubview:self.colorView];
    [self performSelector:@selector(changeViewColorWithBackgroundColor) withObject:nil afterDelay:3.0f];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)changeViewColorWithBackgroundColor
{
    self.colorView.isChangeColor = YES;
    /**
     *    触发 layoutSubViews 方法,不推荐手动调用 layoutSubViews
     */
    [self.colorView setNeedsLayout];
    /**
     *    这样并不会触发 layoutSubViews 方法,需要发送 frame 级别的响应事件才能触发
     */
    [self.colorView layoutIfNeeded];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
