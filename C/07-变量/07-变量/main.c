//
//  main.c
//  07-变量
//
//  Created by 星尘 on 14-9-1.
//  Copyright (c) 2014年 zb737472783. All rights reserved.
//

/*
    变量
        就是在程序中会不断发生变化的数据
 */

#include <stdio.h>

int main()
{
        //  声明变量(函数名, 变量名), 目的就是为了存储数据
    int score;
    score = 14600; // 赋值运算符,不是等号

        //  变量的初始化
    int maxScore = 8000000; // 就是在声明定义变量的同时,赋值
    printf("%d\n", score);
    maxScore = score;
    printf("%d\n", maxScore);
    return 0;
}
