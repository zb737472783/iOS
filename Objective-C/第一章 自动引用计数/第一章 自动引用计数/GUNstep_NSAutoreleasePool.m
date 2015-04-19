//
//  GUNstep_NSAutoreleasePool.m
//  第一章 自动引用计数
//
//  Created by 星尘 on 15/4/19.
//  Copyright (c) 2015年 星尘. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
*   NSAutoreleasePool 类的实现
*/

/*
+ (void) addObject:(id)anObj
{
    NSAutoreleasePool *pool = 取得正在使用的 NSAutoreleasePool 对象;
    if(pool != nil)
    {
        [pool addObject:anObj];
    } else {
        NSLog(@"NSAutoreleasePool 对象非存在状态下调用 autorelease");
    }
}
*/

/*
    嵌套生成或者持有的 NSAutoreleasePool 对象,理所当然会使用最内测的对象.
    NSAutoreleasePool *pool0 = [[NSAutorelease alloc] init];
        NSAutoreleasePool *pool1 = [[NSAutorelease alloc] init];
            NSAutoreleasePool *pool2 = [[NSAutorelease alloc] init];
            id obj = [[NSObject alloc] init];
            [obj autorelease];
            [pool2 drain];
        [pool1 drain];
    [pool0 drain];
*/


/*
*   addObject 实例方法的实现
- (void) addObject:(id)anObj
{
    [array addObject:anObj];
}
*/

/*
*   drain 的实例方法的实现
- (void) drain
{
    [self dealloc];
}
 
- (void) dealloc
{
    [self emptyPool];
    [array release];
}
 
- (void) emptyPool
{
    for(id obj in array)
    {
        [obj release];
    }
}
*/

/*
*   Apple autorelease 的实现
    NSAutorelease *pool = [[NSAutorelease alloc] init];
    /* 等同于 objc_autoreleasePoolPush() */
/*  id obj = [[NSObject alloc] init];
    [obj autorelease];
    /* 等同于 objc_autorelease(obj) */
/*  [pool drain];
    /* 等同于 Objc_autoreleasePoolPop(pool) */

/*
    [NSAutoreleasePool showPools];                      //  非公开方法 showPools 来确认 autorelease 的对象状况,输出到控制台.(此函数只适用于 iOS)
    
    /* 函数声明 */
    extern void _objc_autoreleasePoolPrint();        //   Mac 系统调试用 _objc_autoreleasePoolPrint().
    /* autoreleasepool 调试输出开始 */
    _obj_autoreleasePoolPrint();

/*
    NSAutorelease *pool = [[NSAutorelease alloc] init];
    [pool autorelease];
*   会发生异常,无论调用哪一个对象的 autorelease 实例方法,实现上都是调用 NSobject 类的 autorelease 实例方法,但是对 NSAutoreleasePool 类,autorelease 实例方法已被该类重载,因此运行就会出错.
*/