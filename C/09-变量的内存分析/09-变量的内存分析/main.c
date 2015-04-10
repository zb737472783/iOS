//
//  main.c
//  09-变量的内存分析
//
//  Created by 星尘 on 14-9-2.
//  Copyright (c) 2014年 zb737472783. All rights reserved.
//

/*
    变量的内存分析
    内存寻址 : 从大到小的顺序去找内存地址
 */

#include <stdio.h>

int main()
{
    int a = 10;
    int b = 20;
        //  输出一个变量的内存地址
    printf("a = %p\n", &a);
    printf("b = %p\n", &b); // 与a 的地址相差4位
    int c;  //  声明一个变量的同时没有初始化的话,那么它的值是不确定的
    int d = 0;  //  养成习惯,声明变量的同时就初始化
    c = c + 100;
    printf("c = %d\n", c);
    return 0;
}   //  到这里变量 a 被释放