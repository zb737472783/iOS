//
//  main.c
//  for while 区别
//
//  Created by 星尘 on 14/11/17.
//  Copyright (c) 2014年 zb737472783. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    // insert code here...
    int buleetCount = 10;
    while (buleetCount > 0) {
        printf("发射子弹\n");
        buleetCount--;
    }
    printf("buleetCount = %d\n", buleetCount); // 查看飞机当前子弹数量



    for (int buleetCount = 10; buleetCount > 0; buleetCount--) { // 变量的作用域是 for 中的,外面无法使用
        printf("发射子弹,buleetCount = %d\n", buleetCount);
    }

        //  如果变量只是为了控制循环的次数,循环完毕不再使用,用 for 循环

        //  for 注意点
        //  1.  也可以省略大括号,同样只限一条语句
        //  2.  和 if while 变量注意作用域
        //  3.  分号问题,但是一般不会造成死循环
        //  4.  for( ; ; ); 最简单的 for 死循环
        //  5.  for(int i = 0; i < 3; k++) {
        //          int k = 10; // 编译不通过, k 从这里才开始定义,上面的 k++是未知的
        //      }

    int a =10;
    {
        int a = 20; // 两个a 在不同的存储空间中
        printf("%d\n", a); // 20
    }


    for (int i = 0; i < 3; i++) {
        int i =5;
        printf("%d\n", i); // 每次都是5
    }
    return 0;
}
