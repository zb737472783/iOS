//
//  main.c
//  循环嵌套
//
//  Created by 星尘 on 14/11/17.
//  Copyright (c) 2014年 zb737472783. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    // insert code here...
    // 好友列表
    printf("好友列表1\n");
    printf("        好丽友1\n");
    printf("好友列表2\n");
    printf("        好丽友1\n");


    for (int i = 0; i < 3; i++) {
        printf("好友列表%d\n", i + 1);
        printf("        好丽友1\n");
    }



        //  推荐写法
    int listCount = 2;
    int friendCount = 3;
    for (int i = 0; i < friendCount; i++) {
        printf("好友列表%d\n", i + 1);
        for (int j = 0; j < listCount; j++) {
            printf("       好丽友%d\n", j + 1);
        }
    }
    return 0;
}
