//
//  AppDelegate.m
//  UIApplication
//
//  Created by Eizer-N39 on 2015. 3. 11..
//  Copyright (c) 2015년 beila. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    NSLog(@"%s", __func__);
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    NSLog(@"%s", __func__);
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    NSLog(@"%s", __func__);
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    NSLog(@"%s", __func__);
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    NSLog(@"%s", __func__);
}

- (void)applicationWillTerminate:(UIApplication *)application {
    NSLog(@"%s", __func__);
}

@end
