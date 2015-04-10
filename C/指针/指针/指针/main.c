//
//  main.c
//  指针
//
//  Created by 星尘 on 14/11/17.
//  Copyright (c) 2014年 zb737472783. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    // insert code here...
    /*
        变量类型 *变量名
        变量类型 : 将来可以保存什么类型的变量的地址
        * : 仅仅是一个象征(标志), 象征着是一个指针变量
        变量名 : 区分和标记一个变量
     */
    int number = 10; // 原装遥控器
    int *p; // 8个字节 (后面配的遥控器)
    p = &number;
    return 0;
}
