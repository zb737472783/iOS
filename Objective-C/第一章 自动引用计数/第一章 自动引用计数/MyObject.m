//
//  MyObject.m
//  第一章 自动引用计数
//
//  Created by 星尘 on 15/4/19.
//  Copyright (c) 2015年 星尘. All rights reserved.
//

#import "MyObject.h"

@implementation MyObject

/*!
 *  @author 星尘, 15-04-19 09:04:25
 *
 *  @brief  生成一个对象,并将其返还给该方法的调用方.
 *
 *  @return 已生成的对象
 *
 *  @since 1
 */
+ (id) allocObject
{
    id obj = [[NSObject alloc] init];
    return obj;
}

/*!
 *  @author 星尘, 15-04-19 10:04:23
 *
 *  @brief  加入到 autorelease 中,不立即释放,注册到 autorelease 中,pool 结束时自动调用 release.
 *
 *  @return 假如到 autorelease 中的对象
 *
 *  @since 1
 */
+(id)Object
{
    id obj = [[NSObject alloc] init];
    [obj autorelease];
    return obj;
}

@end
