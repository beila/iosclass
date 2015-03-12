//
//  AppDelegate.m
//  TabModel
//
//  Created by Eizer-N39 on 2015. 3. 12..
//  Copyright (c) 2015년 beila. All rights reserved.
//

#import "AppDelegate.h"
#import "FirstViewController.h"
#import "SecondViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    NSLog(@"%s", __func__);
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    FirstViewController* fvc = [[FirstViewController alloc] initWithNibName:@"FirstViewController" bundle:nil];
    fvc.title = @"First";
    
    SecondViewController* svc = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
    svc.title = @"Second";
    
    UITabBarController* tabController = [[UITabBarController alloc] init];
    tabController.viewControllers = @[fvc, svc];
    _window.rootViewController = tabController;
    
    [_window makeKeyAndVisible];
    
    return YES;
}

@end
