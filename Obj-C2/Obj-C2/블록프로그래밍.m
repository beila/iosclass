//
//  블록프로그래밍.m
//  Obj-C2
//
//  Created by Eizer-N39 on 2015. 3. 10..
//  Copyright (c) 2015년 beila. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject
- (void)foo:(int)a code:(int(^)(int, int))b;
@end

@implementation Car

- (void)foo:(int)a code:(int(^)(int, int))b
{
    NSLog(@"foo %d", b(a, a));
}

@end

int add(int a, int b) { return a + b; }

void swap(int* a, int* b) {
    int t = *b;
    *b = *a;
    *a = t;
}

void sort(int* x, int n, int (^cmp)(int, int))
{
    for(int i = 0; i < n - 1; i++)
    {
        for (int j = i + 1; j < n; j++)
        {
            if (cmp(x[i], x[j]))
                swap(&x[i], &x[j]);
        }
    }
}

int main()
{
    int (*f)(int, int) = &add;
    NSLog(@"%d", f(1, 2));
    
    int (^b)(int, int) = ^(int x, int y) { return x + y; };
    NSLog(@"%d", b(1, 2));
    
//    f = (int(*)(int, int))b;
//    NSLog(@"%d", f(1, 2));
    
//    b = (int(^)(int, int))f;
//    NSLog(@"%d", b(1, 2));
    
    Car* p = [[Car alloc] init];
    [p foo:3 code:^int(int a, int b) {
        return a + b;
    }];
    
    int x[10] = {4, 3, 6, 2, 7, 4, 3, 5, 6, 8};
    sort(x, 10, ^(int a, int b) { return a > b; });
    
    for (int i = 0; i < 10; ++i) {
        NSLog(@"%d\t", x[i]);
    }
}