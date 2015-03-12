//
//  AppDelegate.m
//  TabModel
//
//  Created by Eizer-N39 on 2015. 3. 12..
//  Copyright (c) 2015년 beila. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    NSLog(@"%s", __func__);
    
    UIWindow* window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    [window makeKeyAndVisible];
    
    return YES;
}

@end
