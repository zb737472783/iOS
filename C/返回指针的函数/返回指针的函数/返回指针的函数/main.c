//
//  main.c
//  返回指针的函数
//
//  Created by 星尘 on 14/11/17.
//  Copyright (c) 2014年 zb737472783. All rights reserved.
//

#include <stdio.h>

char* test()
{
    char name[] = "zb"; // 注意点 : 不要返回数组保存的字符串给函数调用者,因为当函数执行完毕,数组就释放掉了
    return name; // 局部变量在栈中,被释放了,无法返回
}

int main(int argc, const char * argv[]) {
    // insert code here...
    char *rs = test();
    printf("%s\n", rs);
    return 0;
}
