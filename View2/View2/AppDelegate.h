//
//  AppDelegate.h
//  View2
//
//  Created by Eizer-N39 on 2015. 3. 11..
//  Copyright (c) 2015년 beila. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ViewController;  // 헤더파일 인클루드 대신 전방선언

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) ViewController* viewController;

@end

