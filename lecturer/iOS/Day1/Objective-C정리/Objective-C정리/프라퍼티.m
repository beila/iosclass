#import <Foundation/Foundation.h>

//  프라퍼티이야기.
// 1. setter와 getter 함수의 규칙 set+멤버변수(첫글자 대문자), getter는 멤버 data 와 동일하게.
// 2. 이름 규칙을 지킨경우 외부에서 Dot 연산자(.) 을 사용해서 접근할수 있다.
// 3. @property, @synthesize 알아 두세요..
//    멤버 data 도 생략 가능합니다. 멤버 data가 없다면 {}도 생략가능합니다.


@interface Car : NSObject
//{
//@public
//    int color;
//}
//-(void)setColor:(int)c;
//-(int)color;

@property int color; // 위 2개의 함수 선언을 생성해 줍니다. 그리고 변수도 생성해 줍니다.
@end


@implementation Car
@synthesize color = _color;  // 아래 2개의 함수 구현을 제공해 줍니다.

//-(void)setColor:(int)c { color = c; }
//-(int)color { return color; }
@end

int main()
{
    Car* p = [ Car alloc];

    p.color = 10; // [ p setColor:10] 과 동일
    
    int n = p.color; // [ p color] 와 동일
    
    NSLog(@"%d", n);
    
    
    
    //p->color = 10;
    //[ p setColor:10];
    
   // NSLog(@"%d", [ p color]);
    [ p release];
}





