//
//  참조계수.m
//  Day2
//
//  Created by chansigi on 3/10/15.
//  Copyright (c) 2015 IOACADEMY. All rights reserved.
//

// ARC 옵션을 꺼야 제대로 컴파일 됩니다.
// 1. 참조계수 기반의 객체 관리 개념
// 2. retain, retainCount, release 함수 알아 두세요

#import <Foundation/Foundation.h>

#if 0
@interface Car : NSObject
@end

@implementation Car
- (void)dealloc
{
    NSLog(@"Car 파괴");
    [super dealloc];
}
@end

int main()
{
    Car* p = [[Car alloc] init];
    NSLog(@"%ld", [p retainCount]); // 1
    
    Car* p2 = p;
    [p2 retain];
    NSLog(@"%ld", [p retainCount]); // 2
    
    [p2 release];                   // 1
    [p release];                    // 0
}
#endif

#if 0
#import <Foundation/Foundation.h>

@interface Car : NSObject
@end

@implementation Car
- (void)dealloc
{
    NSLog(@"Car 파괴");
    [super dealloc];
}
@end
#endif

#if 0
// 3. autorelease pool
int main()
{
    NSAutoreleasePool* pool = [[NSAutoreleasePool alloc] init];
    
    Car* p1 = [Car alloc];
    Car* p2 = [[[Car alloc] init] autorelease];
    
    [p1 autorelease];   // p1 을 auto release pool 에 넣습니다.
    
    [pool release];
}


 4. @autorelease { }
int main()
{
    @autoreleasepool {
        Car* p1 = [Car alloc];
        [p1 autorelease];
        
        Car* p2 = [[[Car alloc] init] autorelease];
    }
}
#endif



// 5. Factory Method와 autorelease 개념 - FactoryMethod 로 만든 객체는 autopool에 놓이게 된다.

#if 0
@interface Car : NSObject

// 자주 사용되는 객체의 초기화 과정이 복잡하다면 해당 객체를 만들어주는 정적함수를 제공하자.
+ (Car*)blueCar;

@end

@implementation Car

+ (Car*)blueCar
{
    Car* p = [[Car alloc] init];
    
    // p를 초기화 하고
    // autopool 에 넣은 후에 리턴
    
    [p autorelease];
    return p;
}


- (void)dealloc
{
    NSLog(@"Car 파괴");
    [super dealloc];
}
@end


int main()
{
    @autoreleasepool {
        Car* p = [Car blueCar];
    }
    
    // [ p release];
    // Car* p = [ [ Car alloc] initWithColor:5 speed:10];
}
#endif



// 6. 아이폰에서의 객체 생성 방법
int main()
{
    @autoreleasepool {
        // 1. 사용자가 alloc 한 경우 - release 해야 한다.
        NSArray* a1 = [ [ NSArray alloc] initWithObjects:@"A", @"B", nil];
        [ a1 release];
        
        
        // 2. 정적함수인 Factory Method로 만든경우 - autopool에 놓인다. release할 필요 없다.
        NSArray* a2 = [ NSArray arrayWithObjects:@"A", @"B", nil];
        
        // 문자열은 3가지 스타일이 있다.
        NSString* s1 = [ [ NSString alloc] initWithString:@"AA"]; [ s1 release];
        NSString* s2 = [ NSString stringWithString:@"AA"];
        NSString* s3 = @"AA"; // 문자열에 한해서만 이렇게 사용가능하다. release 할 필요없다.
    }
}
















