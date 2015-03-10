//
//  참조계수.m
//  Obj-C2
//
//  Created by Eizer-N39 on 2015. 3. 10..
//  Copyright (c) 2015년 beila. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject
@end

@implementation Car

- (void)dealloc {
    NSLog(@"Car 파괴");
    [super dealloc];
}

@end

int main() {
    @autoreleasepool {
        Car* p1 = [Car alloc];
        [p1 autorelease];
        
        Car* p2 = [Car alloc];
        [p2 autorelease];
        
        Car* p3 = p2;
        [p3 retain];
        [p3 autorelease];
    }
    
    return 0;
}

int mainNSAutoreleasePool() {
    NSAutoreleasePool* pool = [[NSAutoreleasePool alloc] init];
    
    Car* p1 = [Car alloc];
    [p1 autorelease];
    
    Car* p2 = [Car alloc];
    [p2 autorelease];
    
    [pool release];
    
    return 0;
}

int mainRetainRelease() {
    Car* p = [[Car alloc] init];
    NSLog(@"%ld", [p retainCount]);
    
    Car* p2 = p;
    [p2 retain];
    
    [p release];
    
    [p2 release];
    
    return 0;
}