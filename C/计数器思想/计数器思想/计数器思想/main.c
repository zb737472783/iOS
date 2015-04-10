//
//  main.c
//  计数器思想
//
//  Created by 星尘 on 14/11/17.
//  Copyright (c) 2014年 zb737472783. All rights reserved.
//
/*
    1.C 语言中任何数值都有真假性,,死循环
    2.while 也可以省略大括号,但只有后面第一条语句被执行,和 while 是整体
    3.while 和 if 中定义变量 要用大括号明确指定作用域,否咋变量作用域混乱
    4.while(count < 5); 条件后加上;会造成死循环;
 */

#include <stdio.h>

int main(int argc, const char * argv[]) {
    // insert code here...
    /*
        获取1~100之间 7的倍数的个数
     */
    int number = 1;
    int count = 0; // 7的倍数的个数
    while (number <= 100) {
        if (0 == (number % 7)) {
            printf("7的倍数\n");
            count++; // 计数器思想(通过循环的形式,进行计数操作,记录每次变化的值)
        }
        printf("count = %d\n", number);
        number++;
    }
    return 0;
}
