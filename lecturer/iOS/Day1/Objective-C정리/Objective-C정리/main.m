// 1. 확장자 : C: .c  Objective-c : .m( C + Objective-C)  .mm(C++, Objective-c)
// 2. C: #include <> - 동일헤더를 2번 포함하면 재정의 에러가 있을수 있다.
//                      보통 include guard 사용
//    Objective-C : #import<> - 2번 포함해도 한번만 빌드됨을 보장한다.
// 3. Objective-C 문자열 @""  => NSString* 에 저장.
// 4. NSLog() 알아 두세요..
#import <Foundation/Foundation.h>

int main()
{
    const char* s1 = "Hello C";
    
    NSString* s2 = @"Hello Objective-C"; // 다른 언어의 new NSString("xxxxx") 개념입니다.
    
    printf("%s\n", s1);
    
    NSLog(@"%s %@", s1, s2);
    
    return 0;
}
// 빌드는 왼쪽 위의 Run 버튼을 누르시면 됩니다.