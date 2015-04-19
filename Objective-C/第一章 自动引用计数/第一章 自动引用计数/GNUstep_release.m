//
//  GNUstep_release.m
//  第一章 自动引用计数
//
//  Created by 星尘 on 15/4/19.
//  Copyright (c) 2015年 星尘. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
*   当 retained 变量大于 0 时 -1,等于 0 时调用 dealloc 实例方法,废弃对象.
*/
/*
- (void) release
{
    if(NSdecrementExtraRefCountWasZero(self))
        [self dealloc];
}
 
 Bool NSDecrementExtraRefCountWasZero(id anObject)
{
    if(((struct obj_layout *) anObject)[-1].retained == 0) {
        return yes;
    } else {
        ((struct obj_layout *).anObject)[-1].retained--;
        return NO;
    }
}

inline void NSDeallocateObject(id anObject)
{
    struct obj_layout *o = & ((struct obj_layout *) anObject)[-1];
    free(o);
}
*/
/*
*   上述代码仅废弃由 alloc 分配的内存块.
*/