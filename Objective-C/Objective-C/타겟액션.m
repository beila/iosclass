//
//  타겟액션.m
//  Objective-C
//
//  Created by Eizer-N39 on 2015. 3. 9..
//  Copyright (c) 2015년 beila. All rights reserved.
//

#if 0

#import <Foundation/Foundation.h>

@interface Dialog : NSObject
- (void)close;
@end

@implementation Dialog
- (void)close {NSLog(@"Dialog closed!!");}
@end

@interface Button : NSObject
{
    id target;
    SEL action;
}

- (void)addTarget:(id)t action:(SEL)a;
- (void)click;
@end

@implementation Button
- (void)addTarget:(id)t action:(SEL)a {target = t; action = a;}
- (void)click {[target performSelector:action];}
@end

int main() {
    Dialog* dialog = [Dialog alloc];
    Button* button1 = [Button alloc];
    [button1 addTarget:dialog action:@selector(close)];
    [button1 click];
    
    Button* button2 = [Button alloc];
    [button2 click];
    [button2 addTarget:dialog action:@selector(close)];
    [button2 click];
}

#endif