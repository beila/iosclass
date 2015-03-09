//
//  프로퍼티2.m
//  Objective-C
//
//  Created by Eizer-N39 on 2015. 3. 9..
//  Copyright (c) 2015년 beila. All rights reserved.
//

#if 0

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property int age;
@property(nonatomic, readwrite, strong) NSString* phone;
//        atomic
//                   readonly
//                              retain
//                              assign
//                              copy
//                              weak

@end

@implementation Person

/*
- (void) setPhone:(NSString *)p {
    // retain, strong
    _phone = p;
    [p release];
    [_phone retain];
    
    // assign
    _phone = p;
 
    // weak
    _phone = p;
    // + autonilling
 
    // copy
    _phone = [p copy];
    [_phone retain];
}
*/

@end

int main() {
}

#endif