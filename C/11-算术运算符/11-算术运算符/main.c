//
//  main.c
//  11-算术运算符
//
//  Created by 星尘 on 14-9-2.
//  Copyright (c) 2014年 zb737472783. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    int a = 10;
    a + 10;
    printf("%d\n", a + 10);
    printf("%d\n", a);

    int b = -9 % 4; //  取余运算只与前面的数字符号有关
    printf("%d\n", b);
        //b = 3.2 % 4;    //  取余运算只能够应用在整数上

    int c = 10.8;   //  自动类型转换 (double -> int) 8 - 4
    printf("%d \n", a);
    int d = (int)19.8;  //  强制类型转换

    double f = 8 + 10.5;    //  自动类型提升 int -> double
    printf("%f\n", f);

    double e = 1 / 2;   //  int / int = int  int -> double
    printf("%f\n", e);

    double g = 1.0 / 2;
    printf("%f\n", g);
    return 0;
}

