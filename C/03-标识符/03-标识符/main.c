//
//  main.c
//  03-标识符
//
//  Created by 星尘 on 14-9-1.
//  Copyright (c) 2014年 zb737472783. All rights reserved.
//

/*
    标识符
        程序员自己在程序中起的一些名字(函数名, 变量名)
        标识符不能使用关键字
        标识符只能是字母, 数字, 下划线 组成 a-z A-Z 0-9 _
        标识符不能以数字开头
        严格区分大小写
        最好要做到见名知意
        驼峰命名法
                第一个单词首字母小写,从第二个单词开始就要首字母大写
 */

#include <stdio.h>

int play0987_() // 合法的
{
    printf("调用成功\n");
    return 0;
}

int play() // 与下面的函数名不同(标识符)
{
    return 0;
}

int Play() // 区分大小写的
{
    return 0;
}

    //播放音乐
int playMusicByiPhone() // 标识符由多个单词组成的时候要严格使用驼峰命名法
{
    return 0;
}

int main()
{
    play0987_();
    return 0;
}