//
//  main.c
//  while联系
//
//  Created by 星尘 on 14/11/16.
//  Copyright (c) 2014年 zb737472783. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

int main(int argc, const char * argv[]) {
    // insert code here...
#if 0
    /*
        1.打飞机游戏,每出10架飞机,让飞机速度加快5,非常的初试速度为250
     */
    int count = 100; // 飞机总数
    int speed = 250; // 飞机初试速度
//    while (count > 0) {
//        if (0 == (count % 10)) {
//            printf("速度加速\n");
//            speed += 5; // 每出10架飞机速度加5
//        } else {
//            printf("第%d架飞机,速度是%d\n",count,speed);
//        }
//        count--; // 每出一架飞机总数就减1
//    }

//    while (count > 0) {
//        count--; // 每出一架飞机总数就减1
//        if (0 == (count % 10)) {
//            speed += 5; // 每出10架飞机速度加5
//            printf("第%d架飞机,速度是%d\n",count,speed);
//            continue; // 跳过当前这次循环,进入下一次循环
//        }
//        printf("速度加速\n");
//    }

    /*
        猜年龄,3次机会,让用户输入一个年龄(猜),让电脑随机产生一个年龄(答案)
     */
    int num = 3;
    int girl = -1;
    girl = arc4random_uniform(20); // 0 ~ 19岁
    while (num > 0) {
        printf("猜猜我的年龄\n");
        int age = -1;
        scanf("%d", &age);
        if (age > girl) {
            printf("我的年龄没有那么大\n");
        } else if (age < girl) {
            printf("我的年龄也没那么小\n");
        } else {
            printf("答案正确\n");
            break; // 可以用在 switch 和循环语句中,在 switch 中用来结束 switch 语句,在循环语句中用来结束循环语句
        }
        num--;
    }
    printf("全部错误!\n");
    system("say 继续努力吧");
#elif 1
    /*
     每个月1~30天中,当天能被2整除就免单
     */
//    int count = 0; // 起始号数
//    while (count <= 30) {
//        count++;
//        if (0 == (count % 2)) {
//            printf("免单\n");
//            continue;
//        }
//        printf("不免单 = %d\n", count);
//    }

    /*
        只能免单一次
     */
    int count = 0;
    while (count < 30) {
        count++;
        if (0 == (count % 2)) {
            printf("%d免单\n", count);
            break; // return 0 同样效果
        }
        printf("%d不免单\n", count);
    }
#endif
    return 0;
}
