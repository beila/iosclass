//
//  프라퍼티2.m
#import <Foundation/Foundation.h>

@interface Phone : NSObject
@end
@implementation Phone
@end
//----------------------------

// 1. 포인터형의 프라퍼티에는 retain(strong), assign(weak), copy 중의 하나의 속성을 지정해야 한다.

// 2. self.phone = p 와 phone = p 의 차이점을 정확히 알아 두세요

// 3. @synthesize phone = _phone;



@interface People : NSObject

@property int age;
@property(retain) Phone* phone; // setter에서 참조 계수를 증가하게 한다.
@end

@implementation People
@synthesize age, phone = _phone; // 멤버 변수를 만들때 이름을 _phone 로 해달라.!!

-(void)dealloc
{
    // 모든 retain 프라퍼티의 메모리 해지를 해야 한다.
    [ _phone release];
    [ super dealloc];
}

// 아래 함수는 멤버 함수 이므로 private(protected)멤버 data에 접근할수 있습니다.
-(void)foo:(Phone*)p
{
    // 아래 2줄의 차이점을 이야기 해보세요...
    _phone = p;      // 1. 멤버 data에 직접 접근 - 참조계수는 변화 없다.
    self.phone = p; // 2. [ self setPhone:p] 처럼 setter 호출. 참조 계수가 증가한다.
    
    NSLog(@"%ld", [_phone retainCount]);
}
@end



int main()
{
    Phone* pho = [ [ Phone alloc] init];  // 1
    People* p1 = [ [ People alloc] init];
    
 //   [ pho release];
 //   NSLog(@"%ld", [ pho retainCount]);
    
    
   // [ p1 foo:pho];
}









/*
int main()
{
    People* p1 = [[ People alloc] init];
    Phone*  pho = [ [ Phone alloc] init];
    
    p1.phone = pho;
//    [ p1.phone retain];
    
    [ pho release];
    
    // 이제 p1.phone를 사용할수 있을까 ???
}
*/






