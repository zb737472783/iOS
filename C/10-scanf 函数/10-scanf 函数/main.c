//
//  main.c
//  10-scanf 函数
//
//  Created by 星尘 on 14-9-2.
//  Copyright (c) 2014年 zb737472783. All rights reserved.
//

/*
    scanf 函数用来接收从键盘上输入的数据
        int %d
        char %c
        float  %f
    scanf 函数会阻塞程序,等待用户响应
 */

#include <stdio.h>

int main()
{
    int a = 10;
        //printf("%d", a);
        //scanf("%d", &a);    //  有了变量的地址才能够直接修改变量内存中存储的值
    printf("a = %d\n", a);

    float f = 0;
        //scanf("%f", &f);
    printf("f = %f\n", f);

        //  能够输入多个变量
    scanf("%d%f", &a, &f);  //  输入的类型必须匹配,否咋会出现垃圾数据, \n 在程序中有特殊含义,scanf 函数中不能出现
    printf("%d-%f\n", a, f);
    return 0;
}