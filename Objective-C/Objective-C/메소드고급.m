//
//  메소드고급.m
//  Objective-C
//
//  Created by Eizer-N39 on 2015. 3. 9..
//  Copyright (c) 2015년 beila. All rights reserved.
//

#if 0

#import <Foundation/Foundation.h>

@interface Car: NSObject
{
    int _speed;
    int _color;
}

- (int)speed;
- (void) setSpeed: (int) s;

- (int)color;
- (void) setColor: (int) c;

- (void) setSpeed: (int) s Color:(int) c;

@end

@implementation Car

- (int) speed {return _speed;}
- (void) setSpeed: (int) s {_speed = s;}

- (int) color {return _color;}
- (void) setColor: (int) c {_color = c;}

- (void) setSpeed: (int) s Color:(int) c {_speed = s; _color = c;}

@end

int main()
{
    Car* p = [Car alloc];
    [p setSpeed:10];
    
    [p setSpeed:10
          Color:20];
    NSLog(@"%d, %d", [p speed], [p color]);
    
    id p2 = [Car alloc];
    [p2 setSpeed:50
           Color:60];
    NSLog(@"%d, %d", [p2 speed], [p2 color]);
}

#endif