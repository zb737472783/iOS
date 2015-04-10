//
//  main.c
//  分支
//
//  Created by 星尘 on 14/11/6.
//  Copyright (c) 2014年 zb737472783. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    // insert code here...
    //  逻辑运算符
    /*
        && 逻辑与
        || 逻辑或
        ! 逻辑非
     */

    /*
    && 格式 条件表达式1 && 条件表达式2
     返回值:只有两个 真 1   假 0
     规则: 先判断条件表达式1是否为真,再判断条件表达式2是否为真,如果条件表达式1和条件表达式2都为真,则返回真(一假则假)
     */
    int a = 10;
    int b = 20;
    int result = (a > 15) && (b > 15); // 任何非0的值都为真
                                       //printf("result = %d\n", result);
        // 原理
    int a2 = 10;
    int b2 = 20;
    int result2 = (a2 > 5) && (b2++ > 5); // 如果前面一个表达式为假后面的表达式就不参与运算了
                                          //printf("a2 = %d, b2 = %d, result2 = %d\n", a2, b2, result2);


        // 逻辑或      条件表达式1 || 条件表达式2     返回值:只有两个真1  假0     规则:先判断条件表达式1是否为真,再判断条件表达式2是否为真,如果1或者2为真,结果就为真(一真则真)
    int a3 = 10;
    int b3 = 20;
    int result3 = (a3 > 5) || (b3++ > 5); // 前面表达式为真 后面的真假都不判断了(表达式就不参与运算)
    printf("result3 = %d\n", result3);
    printf("a3 = %d, b3 = %d\n", a3, b3);
    return 0;
}
