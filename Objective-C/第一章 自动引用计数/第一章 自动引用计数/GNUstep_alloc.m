//
//  GNUstep_alloc.m
//  第一章 自动引用计数
//
//  Created by 星尘 on 15/4/19.
//  Copyright (c) 2015年 星尘. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
 *   GNUstep : http://gunstep.org
 *   GNUstep 是 Cocoa 框架的互换框架,理解了 GNUstep 源代码也就相当于理解了苹果的 Cocoa 实现.
 *   GNUstep/modules/core/base/Source/NSObject.m  NSAllocateObject
*/

/*
    id obj = [[NSObject alloc] init];

+ (id) alloc
{
    return [self allocWithZone:NSDefaultMallocZone()];
}
 
 /*!
 *  @author 星尘, 15-04-19 11:04:46
 *
 *  @brief  allocWithZone
 *
 *  @since 1
 */
/*
+ (id) allocWithZone:(NSZone *)z
{
    return NSAllocateObject(self, 0 , z);
}
*/


/*!
 *  @author 星尘, 15-04-19 11:04:41
 *
 *  @brief  NSAllocateObject 的实现(伪代码)
 *
 *  @since 1
 */
/*
struct obj_layout {
    NSUInteger retained;
};
 
 /*!
 *  @author 星尘, 15-04-19 11:04:41
 *
 *  @brief  函数通过调用 NSZoneMalloc 函数来分配存放对象所需的内存空间,之后将该内存空间置0.
 *
 *  @since 1
 */
/*
inline id NSAllocateObject(Class aClass, NSUInteger exraBytes, NSZone *zone)
{
    int size = 计算容纳对象所需内存大小;
    id new = NSZoneMalloc(zone, size);
    memset(new, 0, size);
    new = (id) & ((struct obj_layout *) new)[1];
}
*/

/*
    alloc 类方法用 struct obj_layout 中的 retained 整数来保存引用计数,并将其写入对象内存头部,该对象内存块全部置0后返回.
*/

