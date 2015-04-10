//
//  main.c
//  14-自增自减运算符
//
//  Created by 星尘 on 14-9-2.
//  Copyright (c) 2014年 zb737472783. All rights reserved.
//

/*
    ++
    --
 */

#include <stdio.h>

int main(int argc, const char * argv[])
{
    int a = 10;
    a++;
    printf("%d\n", a);

        //  a++和 ++a 的区别
    int b = 10;
    int c = 0;
    b = c++;
    printf("b = %d\nc=%d\n", b, c);

    return 0;
}

