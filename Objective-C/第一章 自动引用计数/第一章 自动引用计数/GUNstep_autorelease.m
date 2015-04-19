//
//  GUNstep_autorelease.m
//  第一章 自动引用计数
//
//  Created by 星尘 on 15/4/19.
//  Copyright (c) 2015年 星尘. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
*   autorelease 实例方法的本质就是调用 NSAutoreleasePool 对象的 addObject 类方法.
- (id) autorelease
{
    [NSAutoreleasePool addObject:self];
}
*/

/*
*   GUNstep 中的 autorelease 实际上是用一种称为"IMP Caching"的方法实现的.
*   在方法调用时,为了解决类名/方法名以及取得方法运行时的函数指针,要在框架初始化时对其结果进行缓存.
 
    id autorelease_class = [NSAutoreleasePool class];
    SEL autorelease_sel = @selector(addObject:);
    IMP autorelease_imp = [autorelease_class methodForSelector:autorelease_sel];

- (id) autorelease
{
    (*autorelease_imp)(autorelease_class, autorelease_sel, self);
}
*/
/*
*   以上函数就是 IMP Caching 的方法调用,虽然两处源代码完全相同,但从运行效率上看,即使它依赖于运行环境,一般而言速度也是其他方法的2倍.
*/