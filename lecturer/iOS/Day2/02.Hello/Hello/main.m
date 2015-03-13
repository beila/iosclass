//
//  main.m


#import <UIKit/UIKit.h>

int main(int argc, char *argv[])
{
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, @"AppDelegate");
        // nil은 포인터 0입니다.
        
        // UIApplicationMain 함수
        // 1. UIApplication 이라는 클래스의 인스턴스를 만듭니다.
        // - UIApplication 은 애플리케이션의 수명 주기를 관리합니다.
        // 2. UIApplication 의 delegate 가 되는 클래스의 인스턴스를 만듭니다.
        // - 마지막 인자로 지정된 타입의 인스턴스를 만들고, UIApplication 객체의
        //   인스턴스로 지정합니다.
        // 3. 이 모든 초기화 작업이 끝나면, delegate 에 첫번째 메세지를 보냅니다.
        //   application:didFinishLaunchingWithOptions:
        
    }
}
