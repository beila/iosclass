//
//  AppDelegate.m
//  TableTest
//
//  Created by Eizer-N39 on 2015. 3. 11..
//  Copyright (c) 2015년 beila. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    NSLog(@"%s", __func__);
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.viewController = [[ViewController alloc] initWithNibName:@"ViewController" bundle:nil];
    _window.rootViewController = _viewController;
    
    [_window makeKeyAndVisible];
    
    return YES;
}

- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation {
    NSLog(@"%s %@ %@ %@", __func__, url, sourceApplication, annotation);
    UIAlertView* v = [[UIAlertView alloc] initWithTitle:[url absoluteString] message:sourceApplication delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [v show];
    return YES;
}

@end
