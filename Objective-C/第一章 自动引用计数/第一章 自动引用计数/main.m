//
//  main.m
//  第一章 自动引用计数
//
//  Created by 星尘 on 15/4/19.
//  Copyright (c) 2015年 星尘. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyObject.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...

        /*
         *  取得非自己生成并持有的对象.
         */
        id obj = [NSMutableArray array];
        /*
         *  自己持有对象
         */
        [obj retain];
/*-------------------------------------------------------*/
        /*
         *  自己生成并持有对象.
         */
        id obj2 = [[NSObject alloc] init];
        /*
         *  自己持有对象.
         */
        [obj2 retain];
        /*
         *  释放对象
         *  指向对象的指针仍然被保留在变量 obj 中,貌似能够访问,但对象一经释放绝对不可访问.
         */
        [obj2 release];

/*--------------------------------------------------------*/
        /*
         *  取得非自己生成并持有的对象.
         */
        id obj3 = [NSMutableArray array];
        /*
         *  取得的对象存在,但自己不持有对象
         */
        [obj3 retain];
        /*
         *  自己持有对象.
         */
        [obj3 release];
        /*
         *  自己持有对象.
         */

/*--------------------------------------------------------*/
        /*
         *  原封不动地返回用 alloc 方法生成并持有的对象,就能让调用方也持有该对象.
         */
        MyObject *obj4 = [MyObject allocObject];
        [obj4 release];
        /*
         *  取得的对象,但自己不持有.
         */
        MyObject *obj5 = [MyObject Object];
        /*
         *  也可以通过调用 retain 方法将 autorelease 方法取得的对象变为自己持有.
         */
        [obj5 retain];
        [obj5 release];

/*---------------------------------------------------------*/
        /*
         *  在应用程序中释放了非自己持有的对象或者再次释放此对象就会造成崩溃(访问已经废弃了的对象时崩溃)
         */
        id obj6 = [[NSObject alloc] init];
        [obj6 release];
#warning 再次释放此对象就引起应用程序崩溃
            //[obj6 release];

        MyObject *obj7 = [MyObject Object];
#warning 释放了非自己持有的对象也会引起应用程序崩溃
            // [obj7 release];
    }
    return 0;
}