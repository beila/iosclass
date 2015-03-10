//
//  클래스.m
//  Obj-C2
//
//  Created by Eizer-N39 on 2015. 3. 10..
//  Copyright (c) 2015년 beila. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject
- (void) go;
@end

@implementation Car

- (void) go { NSLog(@"go %@ %@ %@", self, [self class], [Car class]); }

@end

void foo(id p)
{
    if ([p isKindOfClass:[Car class]])
    {
        [p go];
    }
}

int main(int argc, const char * argv[]) {
    Car* p = [[Car alloc] init];
    
    __unused Class c = [p class];
    
    Class c1 = [Car class];
    
    Class c2 = NSClassFromString(@"Car");
    
    Car* p2 = [[c2 alloc] init];
    
    foo(p);
    foo(p2);
}
