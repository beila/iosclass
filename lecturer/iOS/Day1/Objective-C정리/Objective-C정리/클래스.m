//
//  클래스.m
#import <Foundation/Foundation.h>

// Class  키워드
// 1. Class : 클래스의 클래스
// 2. 얻는 방법.- 3가지 방법이 있습니다.
// 3. RTTI 기술로 활용
@interface Car : NSObject
@end

@implementation Car
-(void)go { NSLog(@"go"); }
@end

void foo( id p )
{
    // p가 Car 인지 조사해 보고 싶다.
    if ( [ p isKindOfClass:[Car class]])
    {
        NSLog(@"p는 Car 입니다.");
    }
}
int main()
{
    Car* p1 = [ Car alloc];
    
    foo( p1 );
    
    Class c = [ p1 class]; // 1. 객체의 class 멤버 함수
    Class c2 = [ Car class]; // 2. 정적 멤버함수 사용
    Class c3 = NSClassFromString(@"Car"); // 3. 문자열로 얻기.
    
    Car* p2 = [ c alloc];
    
    [ p2 go];
}



