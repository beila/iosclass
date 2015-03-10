//
//  객체생성.m
//  Obj-C2
//
//  Created by Eizer-N39 on 2015. 3. 10..
//  Copyright (c) 2015년 beila. All rights reserved.
//

#import <Foundation/Foundation.h>

int main()
{
    @autoreleasepool {
        NSArray* a1 = [[NSArray alloc] initWithObjects:@"A", @"B", @"C", nil];
        [a1 release];   // 직접 생성했으면 직접 release
        
        NSArray* a2 = [NSArray arrayWithObjects:@"A", @"B", nil];
        // 팩토리 메소드 안에서 autorelease에 넣는다. 따라서 release하면 안됨
        // array로 시작하는 메소드는 NSArray 팩토리 메소드 (접두어(NS)는 빼고)
        
        NSString* s1 = [[NSString alloc] initWithString:@"AA"];
        [s1 release];
        
        NSString* s2 = [NSString stringWithString:s1];
        // release 안함
        
        NSString* s3 = @"AA";
        // 위와 마찬가지로 release 안함
    }
}