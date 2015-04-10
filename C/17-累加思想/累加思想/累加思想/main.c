//
//  main.c
//  累加思想
//
//  Created by 星尘 on 14/11/16.
//  Copyright (c) 2014年 zb737472783. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    // insert code here...
    /*
        让用户输入一个整数,计算 1 + 2 + 3 ... + n 的和
           1 + 2 + 3 + 4 + 5
     0 + 1
                 3 + 3
                       6 + 4
                            10 + 5 = 15
     规律: 上一次的和加上一个递增的数
     */

#if 0
    int sum = 0;
    int count = 1;

        //    sum = sum + count;
        //count++;

    while (count <= 5) { // 原理 : 通过循环的形式进行累加操作,定义变量记录每次变化后的结果
        sum += count;
        count++;
    }
    printf("%d\n", sum);
#elif 1
//    printf("请输入一个正整数\n");
//    int number = -1;
//    scanf("%d", &number);
    int number = -  1;
    while (number < 0) {
        printf("正整数\n");
        scanf("%d", &number);
    }
    int sum = 0; // 定义变量,记录每次变化结果
    int count = 1; // 递增次数
    while (count <= number) {
        sum += count;
        count++;
    }
    printf("%d\n", sum);
#endif
    return 0;
}
