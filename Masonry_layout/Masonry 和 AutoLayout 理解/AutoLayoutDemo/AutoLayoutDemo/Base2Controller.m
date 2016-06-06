//
//  Base2Controller.m
//  AutoLayoutDemo
//
//  Created by 星尘 on 16/6/6.
//  Email : zb737472783@me.com
//  Copyright © 2016年 星尘. All rights reserved.
//

#import "Base2Controller.h"
#import "MMLabel.h"

@interface Base2Controller ( )
@property ( nonatomic, strong ) UILabel *label2;
@end

@implementation Base2Controller

#pragma mark - 延迟加载

#pragma mark - 生命周期
- ( void )viewWillAppear:( BOOL )animated
{
	[super viewWillAppear:animated];
	[self.navigationController setNavigationBarHidden:YES animated:NO];
}

- ( void )viewDidLoad
{
	[super viewDidLoad];
	// Do any additional setup after loading the view.

	//[2]Relation
	UIView *playerView = ( {
		UIView *view = [[UIView alloc] init];
		[self.view addSubview:view];
		[view mas_makeConstraints:^( MASConstraintMaker *make ) {
			make.left.top.right.equalTo( self.view );
			make.height.equalTo( view.mas_width ).multipliedBy( 9.0f / 16.0f ); //设置好比例后横屏会自动全屏
		}];
		view.backgroundColor = [UIColor blackColor];
		view;
	} );

	//[3]Constant

	//[4]Multiplier

	//[5]Priority

	//[6]intrinsicContentSize
	// UIView *v4 = ( {
	// MMLabel *label = [[MMLabel alloc] init];
	//[self.view addSubview:label];
	//[label mas_makeConstraints:^( MASConstraintMaker *make ) {
	// make.center.equalTo( self.view );
	// make.width.equalTo( @150 ); //自动高度
	//}];
	// label.text = @"12345678901112131415111111111199999";
	// label.numberOfLines = 0;
	// label.backgroundColor = [UIColor grayColor];
	// label;
	//} );

	//[7]Content Priority
	UILabel *label1 = ( {
		UILabel *label = [[UILabel alloc] init];
		[self.view addSubview:label];
		[label mas_makeConstraints:^( MASConstraintMaker *make ) {
			make.left.equalTo( self.view );
			make.centerY.equalTo( self.view );
		}];
		label.text = @"左边的文字";
		label.backgroundColor = [UIColor grayColor];
		label.textColor = [UIColor blackColor];
		label.textAlignment = NSTextAlignmentLeft;
		[label setContentHuggingPriority:UILayoutPriorityRequired
								 forAxis:UILayoutConstraintAxisHorizontal]; //拉伸
		[label setContentCompressionResistancePriority:UILayoutPriorityRequired
											   forAxis:UILayoutConstraintAxisHorizontal]; //压缩
		label;
	} );

	self.label2 = ( {
		UILabel *label = [[UILabel alloc] init];
		[self.view addSubview:label];
		[label mas_makeConstraints:^( MASConstraintMaker *make ) {
			make.left.equalTo( label1.mas_right );
			make.centerY.equalTo( self.view );
		}];
		label.text = @"中间的文字";
		label.backgroundColor = [UIColor redColor];
		label.textColor = [UIColor blackColor];
		label.textAlignment = NSTextAlignmentCenter;
		label;
	} );

	UILabel *label3 = ( {
		UILabel *label = [[UILabel alloc] init];
		[self.view addSubview:label];
		[label mas_makeConstraints:^( MASConstraintMaker *make ) {
			make.left.equalTo( self.label2.mas_right );
			make.right.equalTo( self.view );
			make.centerY.equalTo( self.view );
		}];
		label.text = @"右边的文字";
		label.backgroundColor = [UIColor grayColor];
		label.textColor = [UIColor blackColor];
		label.textAlignment = NSTextAlignmentRight;
		[label setContentHuggingPriority:UILayoutPriorityRequired
								 forAxis:UILayoutConstraintAxisHorizontal];
		[label setContentCompressionResistancePriority:UILayoutPriorityRequired
											   forAxis:UILayoutConstraintAxisHorizontal];
		label;
	} );
}

- ( void )viewDidDisappear:( BOOL )animated
{
	[super viewDidDisappear:animated];
}

- ( void )didReceiveMemoryWarning
{
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

#pragma mark - 代理

#pragma mark - 方法
- ( void )touchesBegan:( NSSet< UITouch * > * )touches
			 withEvent:( UIEvent * )event
{
	self.label2.text = [self.label2.text stringByAppendingString:@"test"];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little
preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
	// Get the new view controller using [segue destinationViewController].
	// Pass the selected object to the new view controller.
}
*/

@end
