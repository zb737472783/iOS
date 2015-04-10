//
//  main.c
//  指向指针的函数
//
//  Created by 星尘 on 14/11/17.
//  Copyright (c) 2014年 zb737472783. All rights reserved.
//

#include <stdio.h>

void test()
{
    printf("热爱编程,热爱生活\n");
}

int main(int argc, const char * argv[]) {
    // insert code here...
    test();

    /*
     变量类型 *变量名称; // 指针
     
     指针指向函数
     void (*pointer) ();
     */

    void (*p)() = test; // 函数的名称就是函数的地址,一定不要加上()
    (*p)(); // 调用
    return 0;
}
