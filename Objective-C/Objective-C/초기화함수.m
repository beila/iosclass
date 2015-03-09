//
//  초기화함수.m
//  Objective-C
//
//  Created by Eizer-N39 on 2015. 3. 9..
//  Copyright (c) 2015년 beila. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject

@property int color;

- (id)init;
- (id)initWithColor:(int)c;

@end

@implementation Car

- (id) init
{
    self = [super init];
    if (self) {
        // 초기화할 땐 접근메소드 안 쓰고 직접 변수에 쓴다. 접근메소드는 자식클래스가 동작을 바꿀 수 있으니
        _color = 10;
    }
    return self;
}

- (id) initWithColor:(int)c
{
    self = [super init];
    if (self) {
        _color = c;
    }
    return self;
}


@end

int main()
{
    Car* p = [Car alloc];
    NSLog(@"%d\n", p.color);
    
    Car* p2 = [p init];
    NSLog(@"%d\n", p2.color);
    
    Car* p3 = [p2 initWithColor:40];
    NSLog(@"%d\n", p3.color);
}