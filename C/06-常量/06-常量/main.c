//
//  main.c
//  06-常量
//
//  Created by 星尘 on 14-9-1.
//  Copyright (c) 2014年 zb737472783. All rights reserved.
//

/*
    常量
        就是在程序中,一眼就能够认出来的数字, 浮点数, 字符(用单引号引起来的数据), 字符串(用双引号引起来的数据)
 */

#include <stdio.h>

int main()
{
    printf("常量\n"); //  字符串
                    // int var = 101; //101为常量
                   // 打印常量
    printf("%d\n", 10); // 占位符 以%开始
                        //  打印浮点类型常量
    printf("%.2f\n", 3.1415f); // 默认位数不够会自动补0
                              //    打印字符常量
    printf("%c\n", 'a');
        //  打印字符串常量
    printf("%s\n", "爱科技爱代码>_<");

    printf("age=%d 身高=%.2f 血型=%c\n", 18, 1.82, 'o');
    return 0;
}