//
//  ViewController.m
//  Time
//
//  Created by 星尘 on 16/10/12.
//  Copyright © 2016年 星尘. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIWebViewDelegate>
@property (nonatomic, strong) UIWebView *mainView;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor blackColor];
    self.mainView = [[UIWebView alloc] init];
    self.mainView.frame = CGRectMake(10, 50, 1400, 414);
    self.mainView.delegate = self;
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"index" ofType:@"html"];
    NSString *htmlString = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:nil];
    self.mainView.scalesPageToFit = YES;
    [self.mainView loadHTMLString:htmlString baseURL:[NSURL URLWithString:filePath]];
    [self.view addSubview:self.mainView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType
{
    return YES;
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    [webView stringByEvaluatingJavaScriptFromString:@"setInterval()"];
}

@end
