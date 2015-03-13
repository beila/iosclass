//  클래스기본문법.m
#import <Foundation/Foundation.h>

// C++, java, C# : class

// 1. Objective-C 클래스의 기본 모양
// 2. 접근 지정자는 멤버 data만 가능합니다. - 멤버 함수는 안됩니다. 그래서 category 라는 문법을 활용한
//                                      테크닉이 있습니다.
// 3. [ ]를 사용함 함수 호출 [ Car foo], [ p go ];
// 4. 객체를 만들고 파괴 하는 방법  [ Car alloc]  [ p release];

// Car.h
@interface Car : NSObject
{
//@private                // @private, @protected, @public, @package 생략시 @protected가 디폴트
    int speed;
    int color;
}
// 멤버 함수는 블럭({}) 외부에 만들게 됩니다. 
+(void)foo;    // + : static 멤버 함수의 의미 - 객체없이 호출가능한 함수
-(void)go;     // - : 일반 멤버함수(인스턴스 함수) - 객체 생성후 호출가능한 함수
@end

// 멤버 함수 구현부 만들기
// Car.m
@implementation Car


+(void)foo { NSLog(@"Car foo"); }
-(void)go  { NSLog(@"Car go");}

@end
//-------------------------------------
int main()
{
    // 정적 멤버 함수 호출하기 - 객체없이 호출가능한 함수
    // 다른 언어 : Car::foo(),  Car.foo()
    
    [ Car foo ]; 
    

    // 객체 생성하는 방법
    // 다른 언어 : Car* p = new Car;
    // Car c; // C++은 스택에 객체를 만들수 있지만 Objective-C에서는 에러 입니다.
    //NSRange range;
    //NSDate a;
    
    Car* p = [ Car alloc];
    
    
    [ p go ];  // 다른 언어  p->go(),  p.go();
    
    
    [ p release]; // 객체 파괴..
}










