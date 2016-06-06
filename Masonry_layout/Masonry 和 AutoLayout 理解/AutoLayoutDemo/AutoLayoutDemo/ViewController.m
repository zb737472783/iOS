//
//  ViewController.m
//  AutoLayoutDemo
//
//  Created by 星尘 on 16/6/6.
//  Copyright © 2016年 星尘. All rights reserved.
//

#import "BaseController.h"
#import "ViewController.h"

@interface ViewController ( ) < UITableViewDelegate, UITableViewDataSource >

@property ( nonatomic, strong ) UITableView *tableview;
@end

@implementation ViewController

+ ( void )load
{
	DDLogVerbose( @"load" );
	/** 320 * 480
		  320 * 568
		  375 * 667
		  414 * 736
	 */
}

- ( void )viewWillAppear:( BOOL )animated
{
	[super viewWillAppear:animated];
	DDLogVerbose( @"viewWillAppear:" );
}

- ( void )viewDidLoad
{
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

	self.tableview = ( {
		UITableView *view = [[UITableView alloc] init];
		[self.view addSubview:view];
		[view mas_makeConstraints:^( MASConstraintMaker *make ) {
			make.edges.equalTo( self.view );
		}];
		view.delegate = self;
		view.dataSource = self;
		view;
	} );
}

- ( void )didReceiveMemoryWarning
{
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

- ( NSInteger )numberOfSectionsInTableView:( UITableView * )tableView
{
	return 1;
}

- ( NSInteger )tableView:( UITableView * )tableView
   numberOfRowsInSection:( NSInteger )section
{
	return 10;
}

- ( CGFloat )tableView:( UITableView * )tableView
heightForRowAtIndexPath:( NSIndexPath * )indexPath
{
	return 50;
}

- ( UITableViewCell * )tableView:( UITableView * )tableView
		   cellForRowAtIndexPath:( NSIndexPath * )indexPath
{
	static NSString *cellIdentify = @"cellIdentify";
	UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentify];
	if ( cell == nil ) {
		cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
									  reuseIdentifier:cellIdentify];
	}
	cell.textLabel.text =
	[NSString stringWithFormat:@"Example%@", @( indexPath.row + 1 )];
	return cell;
}

- ( void )tableView:( UITableView * )tableView
didSelectRowAtIndexPath:( NSIndexPath * )indexPath
{
    Class cls = NSClassFromString([NSString stringWithFormat:@"Base%@Controller", @(indexPath.row + 1)]);
    if (cls) {
        [self.navigationController pushViewController:[[cls alloc] init] animated:YES];
    }
}

@end
