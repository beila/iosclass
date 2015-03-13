//  초기화함수.m
#import <Foundation/Foundation.h>

// 초기화 함수 규칙
// 1. 함수 이름은 init~ 으로 하고
// 2. id 타입을 리턴하게 만들고 성공시 객체 주소를 실패시 0을 리턴하게 한다.
// 3. 부모의 초기화 함수를 먼저 호출해 준다.

// 4. 객체를 만들면서 초기화 하는 기술 : Car* p = [[ Car alloc] initWithColor:5]

// 5. 객체 파괴시 dealloc 함수가 자동으로 호출된다.


@interface Car  : NSObject
{
    int color;
}
-(id)init;
-(id)initWithColor:(int)c;
@end

@implementation Car

-(id)initWithColor:(int)c
{
    self = [ super init ];
    
    if ( self != 0 )
    {
        color = c;
    }
    return self;
}

-(id)init
{
    self = [ super init ];
    
    if ( self != 0 )
    {
        color = 0;
    }
    return self;
}
-(void)dealloc
{
    NSLog(@"Car 파괴");
    [ super dealloc]; // 부모의 dealloc를 호출해준다.
}

@end

int main()
{
    //Car* p = [ Car alloc];
    //[ p init];
    
    Car* p = [ [ Car alloc] initWithColor:5]; //  일반적인 표기법.
    
    [ p release]; // 이 순간 p객체의 dealloc 함수가 자동으로 호출됩니다.
}









