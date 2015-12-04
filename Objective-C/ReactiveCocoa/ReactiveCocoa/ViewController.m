//
//  ViewController.m
//  ReactiveCocoa
//
//  Created by 星尘 on 15/12/4.
//  Copyright © 2015年 星尘. All rights reserved.
//

#import "ViewController.h"
#import <ReactiveCocoa.h>

@interface ViewController ()
@property (nonatomic, strong, nonnull) UITextField *textField;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    /**
     *    测试 rac 框架的使用
     */
    self.textField = [[UITextField alloc] initWithFrame:CGRectMake(15.0f, 100.0f, 160.0f, 40.0f)];
    self.textField.layer.borderColor = [UIColor blackColor].CGColor;
    self.textField.layer.borderWidth = 0.5f;
    [self.view addSubview:self.textField];
    /**
     *    rac 信号
     *    RACSignal有很多方法可以来订阅不同的事件类型。每个方法都需要至少一个block，当事件发生时就会 执行block中的逻辑。在上面的例子中可以看到每次next事件发生时，subscribeNext:方法提供的block都 会执行。
     */
    //    [self.textField.rac_textSignal subscribeNext:^(id x) {
    //        NSLog(@"%@", x);
    //    }];

    /**
     *    rac 过滤器
     */
    [[self.textField.rac_textSignal filter:^BOOL(id value) {
        NSString *text = value;
        return text.length > 3;
    }] subscribeNext:^(id x) {
        NSLog(@"%@", x);
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
