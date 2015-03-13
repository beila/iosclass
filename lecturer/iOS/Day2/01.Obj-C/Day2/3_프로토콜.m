// 프로토콜

// 두 개의 객체 사이의 지켜야 하는 약속(자바의 인터페이스 개념)
// 1. 프로토콜을 만드는 모양
// 2. id<프로토콜이름>
// 3. 프로토콜을 구현하는 클래스 모양 : @interface Car : NSObject<프로토콜이름>
// 4. 델리게이트 패턴 : loc.delegate = p;
// 5. @optional, @required 키워드.!
// - 컴파일 에러가 발생하지는 않는다 !! 경고만 해줄 뿐.

// * Obj-C 의 콜백의 형태
// 1. taget-action : 어떤 이벤트가 발생하면 특정 메시지를 특정 객체에 보내라.
//  target : 메세지를 받는 객체
//  action : 보내는 메세지

// 2. helper object(delegate)
// 프로토콜을 준수하는 도우미 객체가 여기에 있으니, 상황이 발생하면 그에 맞는 메세지를 해당하는 객체에 보내라.
//
// 델리게이트(delegate) 또는 데이터 소스(data source) 라고 불리운다.
// data source ---> [객체] ---> delegate

// 3. Notification Center : 나중에 배울 개념입니다.

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
#import <Foundation/Foundation.h>

// 대부분의 protocol 이 xxxxDelegate 라는 이름을 사용합니다.
@protocol CLLocationManagerDelegate

- (void)updateLocation;
- (void)failToUpdate;

@end

// 앞으로 CLLocationManager 에 델리게이트로 등록하려면
// CLLocationManagerDelegate 라는 프로토콜을 구현해야 한다.
@interface CLLocationManager : NSObject

// ARC 버전
// unsafe_unretained == assign
// weak == assign + auto-niling
@property(nonatomic, weak) id<CLLocationManagerDelegate> delegate;
// @property(nonatomic, unsafe_unretained) id<CLLocationManagerDelegate> delegate;

// ARC 버전 이전
// @property(nonatomic, assign) id delegate;
- (void)startUpdateLocation;
@end

@implementation CLLocationManager

- (void)startUpdateLocation
{
    if (YES)
        [_delegate updateLocation];
    else
        [_delegate failToUpdate];
}
@end

//-----------------------
// @interface 클래스이름 : 부모 < 프로토콜명, 프로토콜명 >
// ; 이 클래스는 CLLocationManagerDelegate의 프로토콜을 준수한다. 라는 의미.
@interface Car : NSObject <CLLocationManagerDelegate>

@end

@implementation Car

- (void)updateLocation {}
- (void)failToUpdate {}

@end



int main()
{
    CLLocationManager* lm = [[CLLocationManager alloc] init];
    
    Car* p = [[Car alloc] init];
    
    lm.delegate = p;
    
    [lm startUpdateLocation];   // GPS 를 사용해서 현재 위치를 알아낸다.
}














