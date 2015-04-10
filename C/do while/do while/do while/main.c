//
//  main.c
//  do while
//
//  Created by 星尘 on 14/11/17.
//  Copyright (c) 2014年 zb737472783. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    // insert code here...
    /*
        do {
            语句;
     } while(); // 此处有; 代表循环结束
     */
    int i = 0;
    do {
        printf("i = %d\n", i);
        i++;
    } while (i < 3); // 至少执行一次
                     // while 会先判断条件是否满足,do while 无论条件是否满足,都会执行一次循环体,日常开发能用 while 就用 while,二者是可以互换的,只有当某些语句无论是否满足都需要执行一次的时候才用 do while
    do
        printf("死循环\n"); //省略大括号的时候 这里只能出现一句代码
    while(1);
    return 0;
}
