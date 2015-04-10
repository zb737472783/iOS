//
//  main.c
//  08-变量的作用域
//
//  Created by 星尘 on 14-9-1.
//  Copyright (c) 2014年 zb737472783. All rights reserved.
//

/*
    变量的作用域
        就是变量的有效使用范围
 */

int play()
{
    int score = 100;
    return 0;
}

int main()
{
    int score = 1000;
        // score = b; // 此时还未给 b 分配空间
    int b = 0;
        //int b = 20; // 重复定义了
    score = 200; // score 是 main 函数中的,不是 play 函数的
    return 0;
}   //  main 函数代码块结束,就会释放掉代码块内部的变量占用的内存空间
