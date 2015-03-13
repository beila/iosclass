//
//  AppDelegate.hb        cafe.naver.com/cppmaster
//  Hello
//
//  Created by imguru on 13. 2. 23..
//  Copyright (c) 2013년 imguru. All rights reserved.
//

#import <Foundation/Foundation.h>

// ios4.0까지는 AppDelegate의 부모가 NSObject 였는데
// 5.0으로 오면서 변경됩니다. - 터치 이벤트 관련 기능 때문입니다.

@interface AppDelegate : UIResponder< UIApplicationDelegate >

// noatomic : setter를 만들때 멀티스레드에 안전할필요 없다는것.
@property(strong, nonatomic) UIWindow* window;
@end
