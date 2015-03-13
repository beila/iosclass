#import <Foundation/Foundation.h>

// 1. 인자가 2개 이상 있는 멤버 함수(메소드)를 만드는 방법 - 왜 이 모양인지 철학을 잘이해하세요
// 2. 모든 객체의 주소를 담을수 있는 포인터 타입 - id



// C의 함수를 생각해 봅시다.   setX( 10, y:10, width:100, height:100)

@interface Car : NSObject
{
    int speed;
    int color;
}
-(void)go;        // "go"
-(void)go:(int)a; // "go:"    인자가 1개인경우
//-(void)go:(float)f; // "go:" error 함수 이름이 같으면 안됩니다. - 오버로딩 지원안됨.
-(void)go:(int)a speed:(int)s; // "go:speed:"   인자가 2개인경우
-(void)go:(int)a speed:(int)s color:(int)c; // "go:speed:color:"  인자가 3개인 경우 만들어 보세요
@end

@implementation Car
-(void)go                                  { NSLog(@"go0"); }
-(void)go:(int)a                           { NSLog(@"go1"); }
-(void)go:(int)a speed:(int)s              { NSLog(@"go2"); }
-(void)go:(int)a speed:(int)s color:(int)c { NSLog(@"go3"); }
@end

int main()
{
    id p2 = [Car alloc]; // id 모든 Objective-C의 객체를 담는 포인터..
    
    [ p2 go];
    
    id a = (id)10;
    
    Car* p = [ Car alloc];
    
    
    [ p go];
    [ p go:10];
    [ p go:10 speed:20]; //[ p go:10 :20];
    [ p go:10 speed:20 color:5];
    
    [ p release ];
}

// 실행 단축키 : command + R



