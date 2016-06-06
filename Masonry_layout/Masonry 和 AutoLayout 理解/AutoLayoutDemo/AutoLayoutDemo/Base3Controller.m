//
//  Base3Controller.m
//  AutoLayoutDemo
//
//  Created by 星尘 on 16/6/6.
//  Email : zb737472783@me.com
//  Copyright © 2016年 星尘. All rights reserved.
//

#import "Base3Controller.h"

@interface Base3Controller ( )
@property ( nonatomic, strong ) UIView *block;
@end

@implementation Base3Controller

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

	self.block = ( {
		UIView *view = [[UIView alloc] init];
		[self.view addSubview:view];
		// view.frame = CGRectMake(0, 0, 100, 100);
		view.backgroundColor = [UIColor greenColor];
		[view mas_makeConstraints:^( MASConstraintMaker *make ) {
			make.center.equalTo( self.view ).centerOffset( CGPointMake( 0, -300 ) );
			make.size.mas_equalTo( CGSizeMake( 200, 200 ) );
		}];
		view.transform = CGAffineTransformScale( CGAffineTransformIdentity, 0.3, 0.3 );
		view;
	} );
}

- ( void )viewDidAppear:( BOOL )animated
{
	[super viewDidAppear:animated];
	//[UIView animateWithDuration:0.3 animations:^{
	////self.block.frame = CGRectMake(0, 200, 100, 100);
	//[self.block mas_updateConstraints:^(MASConstraintMaker *make) {
	// make.center.equalTo(self.view);
	//}];
	//[self.view layoutIfNeeded];
	// self.block.transform = CGAffineTransformIdentity;
	//}];

	//[UIView animateWithDuration:1.0
	//delay:0
	//usingSpringWithDamping:0.5
	//initialSpringVelocity:1
	//options:0
	//animations:^{
		//[self.block mas_updateConstraints:^( MASConstraintMaker *make ) {
			//make.center.equalTo( self.view );
		//}];
		//[self.view layoutIfNeeded];
		//self.block.transform = CGAffineTransformIdentity;
	//}
	//completion:^( BOOL finished ){

	//}];
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
