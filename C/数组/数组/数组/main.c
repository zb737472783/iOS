//
//  main.c
//  数组
//
//  Created by 星尘 on 14/11/17.
//  Copyright (c) 2014年 zb737472783. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    // insert code here...
    int scores[3];
    scores[0] = 55;

    int scores2[3] = {1, 3, 5};
    int scores3[5] = {1, 3}; // 剩下的默认赋值为0

        //  指定元素赋值
    int scroes4[5] = {[3] = 8, [4] = 9};


    int length = 10;
    int scores5[length]; // 这么写有问题,通过变量定义数组,如果没有初始化数组,数组中存放的就是垃圾数据(实际开发不推荐这么写)


    int count = 3;
    int scores6[count] = {1, 2}; // ERROR(提示有可能没有初始化,不知道有多少个元素)

    int scrores7[] = {1, 2, 3}; // 正确的,在定义数组的同时初始化,会自动匹配元素个数

    int scores8[]; // ERROR

        //  数组是从低字节开始存放数据
    return 0;
}
