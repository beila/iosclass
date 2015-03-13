//
//  셀렉터.m
#import <Foundation/Foundation.h>

// 1. 셀렉터 : 메소드의 소유한 번호
// 2. SEL s1 = @selector(함수이름) 으로 얻어낸다.
// 3. 셀렉터를 알면 해당 함수를 호출할수 있다.
//    [ p performSelector:s1]
//    [ p performSelector:s2 withObject:10];

//----------------------------------------
// 4. Objective-C의 모든 멤버 함수는 결국 C의 함수로 변환된다. go(id, SEL, ... )모양입니다.
//    IMP f = [ p methodForSelector:s1] 으로 함수 포인터를 얻을수 있습니다.

// 5. 셀렉터의 정확한 원리.
//     함수 이름을 담은 문자열 - 메소드 이름이 동일하면 클래스가 달라고 셀렉터는 동일하다.
//     [ p performSelector:s1]  p객체의 메소드 table에서 s1 이름의 함수를 찾아서 호출해달라


@interface Car : NSObject
{
}
-(void)go;
-(void)go:(int)a;
-(void)go:(int)a speed:(int)s;
@end

@implementation Car
-(void)go        { NSLog(@"go0"); }
-(void)go:(int)a { NSLog(@"go1"); }

-(void)go:(int)a speed:(int)s   // go( id obj, SEL s, ... ) 로 변경됩니다.
{
    NSLog(@"go2");
}
@end

@interface Truck : NSObject
{
}
-(void)go;
@end

@implementation Truck
-(void)go { NSLog(@"Truck go"); }
@end

//--------------------------
int main()
{
    SEL s1 = @selector(go); // s1은 Car의 go 인가요 ? Truck의 go 인가요 ?
    
    NSLog(@"%s", (char*)s1);
    
    Car* p = [ Car alloc];
    
    [ p performSelector:s1]; // 이순간 p 객체의 method table에서 s1 문자열의 함수를 찾아냅니다.
                            // 그리고 해당 함수를 호출합니다.
    
    SEL s2 = @selector(foo);
    
    [ p performSelector:s2]; // 컴파일 시간에 에러가 나올까요 ?
}






/*
typedef id (*F)(id, SEL, ...);

int main()
{
    SEL s1 = @selector(go);
    SEL s2 = @selector(go:);
    SEL s3 = @selector(go:speed:);
    
    NSLog(@"%x, %x, %x", (int)s1, (int)s2, (int)s3);
    
    Car* p = [ Car alloc];

    //--------------------------------
    F f = [ p methodForSelector:s3]; // Objective-C함수는 결국 C함수가 됩니다. 그 주소를 얻는
                                        // 코드 입니다
    f( p, s3, 10, 10);

    IMP f2 = [ p methodForSelector:s3];
    f2(p, s3, 10,20);
    
    //----------------------
    
    // 셀렉터를 사용해서 함수를 호출할수 있습니다.
    [ p performSelector:s1];
    [ p performSelector:s2 withObject:(id)10];
    [ p performSelector:s3 withObject:(id)10 withObject:(id)20]; // go(p, s3, 10, 20)
    
    [ p performSelector:s3]; // 어떻게 될까요 ? go( p, s3 )
    
    
    [ p release];
}

*/



