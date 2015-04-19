//
//  NSAutoreleasePool.m
//  第一章 自动引用计数
//
//  Created by 星尘 on 15/4/19.
//  Copyright (c) 2015年 星尘. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
*   NSAutoreleasePool 对象的生命周期
*/

/*
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    id obj = [[NSObject alloc] init];
    [obj autorelease];
    [pool drain];                                       //  等同于 [obj release];
*/

/*
*   在 Cocoa 框架中,相当于程序主循环的 NSRunLoop 或者在其他程序可运行的地方,对 NSAutoreleasePool 对象进行生成,持有和废弃处理.
*   尽管如此,但在大量产生 autorelease 的对象时,只要不废弃 NSAutoreleasePool 对象,那么生成的对象就不能被释放,因此有时会产生内存不足的现象.
 
 // 优化之前
    for(int i = 0; i < 图像数; i++)
    {
        读入图像;
        大量产生 autorelease 的对象;
        由于没有废弃 NSAutoreleasePool 对象;
        最终导致内存不足!
    }
 
 // 优化之后:
    for(int i = 0; i < 图像数; i++)
    {
        NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
        读入图像;
        大量产生 autorelease 的对象;
        [pool drain];
 // 通过[pool drain];
 // autorelease 的对象被遗一起 release.
    }

*/