//
//  MyObject.h
//  第一章 自动引用计数
//
//  Created by 星尘 on 15/4/19.
//  Copyright (c) 2015年 星尘. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyObject : NSObject
/*!
 *  @author 星尘, 15-04-19 10:04:44
 *
 *  @brief  原封不动的返回用 alloc 方法生成的对象.
 *
 *  @return 用 alloc 方法生成的对象
 *
 *  @since 1
 */
+ (id) allocObject;
/*!
 *  @author 星尘, 15-04-19 10:04:36
 *
 *  @brief  使用 autorelease 方法,可以使取得的对象存在,但自己不持有对象.
 *
 *  @return 加入到自动释放池中的对象
 *
 *  @since 1
 */
+ (id) Object;

@end
