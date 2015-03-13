//
//  프로토콜.m
#import <Foundation/Foundation.h>


// 두개의 객체 사이의 지켜야 하는 약속(자바의 인터페이스 개념)
// 1. 프로토콜을 만드는 모양

// 2. id<프로토콜이름>

// 3. 프로토콜을 구현하는 클래스 모양 : @interface Car : NSObject<프로토콜이름>

// 4. 델리게이트 패턴 : loc.delegate = p;

// 5. @optional, @required 키워드.!



// 대부분의 protocol 이 xxxxDelegate라는 이름을 사용합니다.
@protocol CLLocationManagerDelegate

@optional
-(void)updateLocation;

@required
-(void)failToUpdate;

@end

// 앞으로 CLLocationManager에 델리게이트로 등록하려면 "CLLocationManagerDelegate"프로토콜을 구현해야 한다.

@interface CLLocationManager : NSObject

@property(retain) id<CLLocationManagerDelegate> delegate;
-(void)startUpdateLocation;
@end


@implementation CLLocationManager

-(void)startUpdateLocation
{
    if ( YES )
        [ _delegate updateLocation];
    else
        [ _delegate failToUpdate];
}
@end
//-----------------------

// @interface 클래스이름 : 부모 < 프로토콜명, 프로토콜명 >

@interface Car : NSObject < CLLocationManagerDelegate >

@end


@implementation Car

-(void)updateLocation {}
-(void)failToUpdate {}

@end


int main()
{
    CLLocationManager* loc = [ [ CLLocationManager alloc] init];
    
    Car* p = [ Car alloc];
    loc.delegate = p;
    
    [ loc startUpdateLocation]; // GPS를 사용해서 현재 위치를 알아낸다
    
    [ loc release];
}






