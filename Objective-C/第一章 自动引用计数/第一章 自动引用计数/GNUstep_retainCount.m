//
//  GNUstep_retainCount.m
//  第一章 自动引用计数
//
//  Created by 星尘 on 15/4/19.
//  Copyright (c) 2015年 星尘. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
*   对象的引用计数可通过 retainCount 实例方法取得
*/

/*
    id obj = [[NSObject alloc] init];
    NSLog(@"retainCount = %d", [obj retainCount]);
    /*
    *   显示 retainCount = 1
    */

/*
*   retainCount 伪代码
*/
/*
- (NSUInteger) retainCount
{
    return NSExtraRefCount(self) + 1;
}
 
inline NSUInteger NSExtraRefCount(id anObject)
{
    return ((struct obj_layout *) anObject)[-1].retained;
}
*/

/*
* 由对象寻址到对象内部,从而访问其中的 retained 变量.(指向 struct obj_layout 的指针,减去 struct obj_layout 大小的地址).
*/