//
//  셀렉터.m
//  Objective-C
//
//  Created by Eizer-N39 on 2015. 3. 9..
//  Copyright (c) 2015년 beila. All rights reserved.
//

#if 0

#import <Foundation/Foundation.h>

@interface Car: NSObject
- (void)go;
- (void)go:(int)a;
- (void)go:(int)a speed:(int)s;
@end

@implementation Car
- (void)go                      { NSLog(@"go1");}   // go
- (void)go:(int)a               { NSLog(@"go2");}   // go:
- (void)go:(int)a speed:(int)s  { NSLog(@"go3");}   // go:speed:
@end

@interface Truck : NSObject
- (void)go:(int)a;
@end

@implementation Truck
- (void)go:(int)a { NSLog(@"go truck");}
@end

typedef id (*F)(id, SEL, ...);

int main() {
    SEL s1 = @selector(go);
    Car* p = [Car alloc];
    [p performSelector:s1];
    
    SEL s2 = @selector(go:);
    [p performSelector:s2 withObject:@10];
    [[Truck alloc] performSelector:s2 withObject:@20];
    
    SEL s3 = @selector(go:speed:);
    [p performSelector:s3 withObject:@30 withObject:@40];
    
    NSLog(@"%s %s %s", sel_getName(s1), sel_getName(s2), sel_getName(s3));
    
    F f = (F)[p methodForSelector:s1];
    f(p, s1);
    
    F f2 = (F)[p methodForSelector:s2];
    f2(p, s2);
}

#endif