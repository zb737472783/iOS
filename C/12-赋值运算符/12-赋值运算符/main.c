//
//  main.c
//  12-赋值运算符
//
//  Created by 星尘 on 14-9-2.
//  Copyright (c) 2014年 zb737472783. All rights reserved.
//

/*
    =
    -=
    +=
 */

#include <stdio.h>

int main(int argc, const char * argv[])
{
    int a = 10;
    a = a + 5;
    a += 5; //  简化的写法
    printf("%d\n", a);

    a += 5 + 4 * 5; //  复合赋值运算符
        //a = a + (5 + 4 * 5);
    return 0;
}

