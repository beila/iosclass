//
//  클래스기본문법.m
//  Objective-C
//
//  Created by Eizer-N39 on 2015. 3. 9..
//  Copyright (c) 2015년 beila. All rights reserved.
//

#if 0

#import <Foundation/Foundation.h>

// Car.h
@interface Car : NSObject
{
@private
    int speed;
    int color;
}

- (void)foo;
+ (void)hoo;

@end

// Car.m
@implementation Car

- (void) foo {NSLog(@"-foo");}
+ (void) hoo {NSLog(@"+hoo");}

@end

int main(int argc, char* argv[])
{
    [Car hoo];
    
    Car* p = [Car alloc];
    //[p retain];
    [p foo];
    //[p release];
    p = nil;
}

#endif