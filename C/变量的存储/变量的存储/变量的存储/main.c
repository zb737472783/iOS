//
//  main.c
//  变量的存储
//
//  Created by 星尘 on 14/11/17.
//  Copyright (c) 2014年 zb737472783. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    // insert code here...
    int num; // 开辟存储控空间 分配字节    内存分配是从大到小的分配(开辟一个 int 类型的字节 然后从高地址往低地址分配)
    num = 10;

        //  内存寻址由大到小
    int value;
    value = -12;

    printf("num=%p\nvalue=%p\n", &num, &value);
    return 0;
}
