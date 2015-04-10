//
//  main.c
//  循环嵌套练习
//
//  Created by 星尘 on 14/11/17.
//  Copyright (c) 2014年 zb737472783. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    // insert code here...
    /*
        ***
        ***
        ***
     */
    int row = 3; // 控制输出几行
    int col = 3; // 控制输出几列
    for (int i = 0; i < row; i++) {
        for (int j = 0; j < col; j++) {
            printf("*");
        }
        printf("\n");
    }
        // 外循环控制行数,内循环控制列数

    printf("----------------------------------------\n");

    /*
        ***
        **
        *
     */
    for (int i = 0; i < 3; i++) {
        for (int j = 3; j > i; j--) {
            printf("*");
        }
        printf("\n");
    }



    printf("----------------------------------------\n");


    /*
        *
        **
        ***
     */
    for (int i = 0; i < 3; i++) {
        for (int j = 0; j <= i; j++) {
            printf("*");
        }
        printf("\n");
    }

        //  尖尖向上 改变内循环条件,让条件随着外循环的初始化值变化
        //  尖尖向下 改变内循环的初始化表达式,让初始化表达式随着外循环的初始值变化

    printf("----------------------------------------\n");

    /*
        --*
        -**
       *****
     */

    for (int i = 0; i < 3; i++) {
        for (int j = i; j < 3 -1; j++) {
            printf("-");
        }
        for (int j = 0; j <= i * 2; j++) {
            printf("*");
        }
        printf("\n");
    }
    return 0;
}
