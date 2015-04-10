//
//  main.c
//  13-sizeof 运算符
//
//  Created by 星尘 on 14-9-2.
//  Copyright (c) 2014年 zb737472783. All rights reserved.
//

/*
    常量, 变量, 数据类型在程序内存中所占用的大小
    sizeof()    不是函数,是运算符
 */

#include <stdio.h>

int main(int argc, const char * argv[])
{
    int a = 10;
    printf("%d\n", sizeof(a));

    int length = sizeof(long);
    printf("%d\n", length);

    length = sizeof 10; //  另一种写法,防止 sizeof 被误认为函数
                        //length = sizeof int;    //  错误写法,如果要计算数据类型,就不能省略括号
    return 0;
}

