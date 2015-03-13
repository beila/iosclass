//
//  메모리관리.m
#import <Foundation/Foundation.h>

// 1. 참조계수 기반의 객체 관리 개념
// 2. retain, retainCount, release 함수 알아 두세요
// 3. autorelease pool
// 4. @autorelease { }
// 5. Factory Method와 autorelease 개념 - FactoryMethod 로 만든 객체는 autopool에 놓이게 된다.

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







/*
@interface Car : NSObject
{
}
+(Car*)carBlue;
@end

@implementation Car
-(void)dealloc
{
    NSLog(@"Car 파괴");
    [ super dealloc];
}

// 자주 사용되는 객체의 초기화 과정이 복잡하다면 해당 객체를 만들어주는 정적함수를 제공하자.
+(Car*)carBlue
{
    Car* p = [ [ Car alloc] init];
    
    // p를 초기화 하고..
    // autopool에 넣은후에 리턴.
    
    [ p autorelease];
    return p;
}

@end

int main()
{
    @autoreleasepool {
    
        Car* p = [ Car carBlue ];
    }
    //[ p release];
    //Car* p = [ [ Car alloc] initWithColor:5 speed:10];
}
















/*
int main()
{
    NSAutoreleasePool* pool = [[ NSAutoreleasePool alloc] init];
      
    Car* p1 = [ Car alloc];
    Car* p2 = [[[ Car alloc] init] autorelease];

    [ p1 autorelease]; // p1을 autorelease pool 에 넣습니다.
   
    
    [ pool release]; // auto pool 에 있는 모든 객체가 참조계수가 1개 줄어든다. 참조계수가 0이면 파괴된다.
}















/*
int main()
{
    Car* p = [[ Car alloc] init];
    [ p retain]; // 참조 계수 증가

    NSLog(@"%ld", [ p retainCount]); // 2
    [ p release]; // 참조계수 감소..
    
    NSLog(@"%ld", [ p retainCount]); // 1
    [ p release]; // 참조계수 감소..- 0 이므로 객체 파괴!!
}
*/








