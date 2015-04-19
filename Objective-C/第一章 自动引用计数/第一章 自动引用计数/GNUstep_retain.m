//
//  GNUstep_retain.m
//  第一章 自动引用计数
//
//  Created by 星尘 on 15/4/19.
//  Copyright (c) 2015年 星尘. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
*   retain 的伪代码
*/

/*
- (id)retain
{
    NSIncrementExtraRefCount(self);
    return self;
}
 
inline void NSIncrementExtraRefCount(id anObject)
{
    if(((struct obj_layout *) anObject) [-1].retained == UINT_MAX - 1)
    {
        [NDException raise:NSInternalInconsistencyException format:@"NSIncrementExtraRefCount() asked to increment too far."];
    }
    ((struct obj_layout *) anObject)[-1].retained++;
}
*/

/*
*   增加了当 retained 变量超出最大值时发生异常的代码,但实际上只运行了使 retained 变量 +1 的 retained++ 的代码.
*/