//
//  Base1Controller.m
//  AutoLayoutDemo
//
//  Created by 星尘 on 16/6/6.
//  Email : zb737472783@me.com
//  Copyright © 2016年 星尘. All rights reserved.
//

#import "Base1Controller.h"

@interface Base1Controller ( )

@end

@implementation Base1Controller

#pragma mark - 延迟加载

#pragma mark - 生命周期
- ( void )viewWillAppear:( BOOL )animated
{
	[super viewWillAppear:animated];
}

- ( void )viewDidLoad
{
	[super viewDidLoad];
	// Do any additional setup after loading the view.

	//[1]Attribute

	UIView *v1 = ( {
		UIView *view = [[UIView alloc] init];
		[self.view addSubview:view];
		[view mas_makeConstraints:^( MASConstraintMaker *make ) {
			make.size.mas_equalTo( CGSizeMake( 50, 50 ) );
			make.left.equalTo( self.view );
			// make.top.equalTo( self.mas_topLayoutGuide ); //导航栏底部置顶
			make.top.and.left.equalTo( self.view );
		}];
		view.backgroundColor = [UIColor blueColor];
		view;
	} );

	UIView *v2 = ( {
		UIView *view = [[UIView alloc] init];
		[self.view addSubview:view];
		[view mas_makeConstraints:^( MASConstraintMaker *make ) {
			make.size.mas_equalTo( CGSizeMake( 50, 50 ) );
			make.left.equalTo( v1.mas_right );
			make.top.equalTo( v1.mas_bottom );
		}];
		view.backgroundColor = [UIColor blueColor];
		view.layoutMargins = UIEdgeInsetsMake( -20, -20, -20, -20 ); //外围包裹边距
		view;
	} );

	UIView *v3 = ( {
		UIView *view = [[UIView alloc] init];
		[self.view addSubview:view];
		[view mas_makeConstraints:^( MASConstraintMaker *make ) {
			make.centerY.equalTo( v2 );
			make.left.equalTo( v2.mas_rightMargin );
			make.size.mas_equalTo( CGSizeMake( 50, 50 ) );
		}];
		view.backgroundColor = [UIColor redColor];
		view;
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
