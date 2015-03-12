//
//  AppDelegate.m
//  NaviView1
//
//  Created by Eizer-N39 on 2015. 3. 12..
//  Copyright (c) 2015년 beila. All rights reserved.
//

#import "AppDelegate.h"
#import "FirstViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    NSLog(@"%s", __func__);
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    FirstViewController* fvc = [[FirstViewController alloc] initWithNibName:@"FirstViewController" bundle:nil];
    
    UINavigationController* nc = [[UINavigationController alloc] initWithRootViewController:fvc];
    
    _window.rootViewController = nc;
    [_window makeKeyAndVisible];
    
    return YES;
}

@end
