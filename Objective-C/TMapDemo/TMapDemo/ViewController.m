//
//  ViewController.m
//  TMapDemo
//
//  Created by 星尘 on 15/4/10.
//  Copyright (c) 2015年 星尘. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    self.mapview = [[TMapView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:self.mapview];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
