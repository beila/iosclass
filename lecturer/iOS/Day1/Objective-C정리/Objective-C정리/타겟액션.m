//
//  타겟액션.m
#import <Foundation/Foundation.h>
// 타겟-액션 디자인 기술(아이폰의 3가지 디자인 : 타겟액션, 델리게이트, MVC)
@interface Dialog : NSObject {}
-(void)close;
@end

@implementation Dialog
-(void)close { NSLog(@"Dialog close"); }
@end
//--------------------------------------
@interface Button : NSObject
{
    id  target;
    SEL action;
}
-(void)click;
-(void)addTarget:(id)t action:(SEL)a;
@end

@implementation Button

-(void)addTarget:(id)t action:(SEL)a
{
    target = t;
    action = a;
}
-(void)click
{
    //  자신이 눌렸음을 외부에 알려야 한다.
    [ target performSelector:action];
}
@end

int main()
{
    Button* b1 = [ Button alloc];
    Button* b2 = [ Button alloc];
    
    Dialog* dlg = [ Dialog alloc];
    
    // 버튼을 누를때 핸들러를 연결해 준다.
    [ b1 addTarget:dlg action:@selector(close) ];
    
    [ b1 click ]; // 결국 이 순간 Dialog close함수가 호출됩니다.
}












