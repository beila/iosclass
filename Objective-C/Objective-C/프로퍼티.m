//
//  프로퍼티.m
//  Objective-C
//
//  Created by Eizer-N39 on 2015. 3. 9..
//  Copyright (c) 2015년 beila. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject
@property int speed;
@property (readonly) int color;
//         readwrite
@property NSString* name;
- (void)foo;
@end

@implementation Car
- (void)foo{
    self.name = @"foo";     // 메모리 관리 코드가 실행되도록 메소드 호출 (ARC 없던 코드 호출하기 위해서는 필수!)
    NSLog(@"%@", _name);    // 메모리 관리 코드 필요없다. 바로 호출하는 게 빠름
}
@end

int main() {
    Car* p = [Car alloc];
    [p setSpeed:10];
    p.speed = 20;
    NSLog(@"%d %@ %d", [p speed], p, p.speed);
    
    [p foo];
    //p.color = 50;
}