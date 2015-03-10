//
//  AppDelegate.m
//  Hello2
//
//  Created by Eizer-N39 on 2015. 3. 10..
//  Copyright (c) 2015년 beila. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    NSLog(@"%s", __func__);
    
    CGRect frame = [[UIScreen mainScreen] bounds];

    _window = [[UIWindow alloc] initWithFrame:frame];
    _window.backgroundColor = [UIColor blueColor];
    _window.alpha = 0.5f;
    
    [_window makeKeyAndVisible];
    
    return YES;
}

- (void)dealloc
{
    NSLog(@"앱 정리");
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    NSLog(@"%s", __func__);
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    NSLog(@"%s", __func__);
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    NSLog(@"%s", __func__);
}

@end