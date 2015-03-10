//
//  AppDelegate.m
//  Sample
//
//  Created by Eizer-N39 on 2015. 3. 10..
//  Copyright (c) 2015년 beila. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    NSLog(@"%s", __func__);
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    _window.backgroundColor = [UIColor whiteColor];
    
    UIButton* button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(20, 20, 100, 50);
    button.backgroundColor = [UIColor blueColor];
    button.alpha = .5f;
    [button setTitle:@"button" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonClicked) forControlEvents:UIControlEventTouchUpInside];
    [_window addSubview:button];
    
    UIButton* button2 = [UIButton buttonWithType:UIButtonTypeInfoDark];
    button2.frame = CGRectMake(100, 200, 200, 50);
    [button2 setTitle:@"second button" forState:UIControlStateNormal];
    [button2 addTarget:self action:@selector(button2Clicked) forControlEvents:UIControlEventTouchUpInside];
    [_window addSubview:button2];
    
    UIButton* button3 = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
    button3.frame = CGRectMake(150, 300, 200, 50);
    [button3 setTitle:@"third button" forState:UIControlStateNormal];
    [button3 addTarget:self action:@selector(button3Clicked) forControlEvents:UIControlEventTouchUpInside];
    [_window addSubview:button3];
    
    [_window makeKeyAndVisible];
    return YES;
}

- (void)forwardInvocation:(NSInvocation *)anInvocation{
    NSLog(@"%s", __func__);
    NSLog(@"%@", anInvocation);
}

- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector{
    NSLog(@"%s", __func__);
    NSLog(@"%@", NSStringFromSelector(aSelector));
    return nil;
}

- (void)buttonClicked{
    NSLog(@"%s", __func__);
    
    [[[UIAlertView alloc] initWithTitle:@"alert"
                                message:@"위험위험"
                               delegate:self
                      cancelButtonTitle:@"Cancel"
                      otherButtonTitles:@"OK", nil] show];
}

- (void)button2Clicked{
    NSLog(@"%s", __func__);
    
    UIActionSheet* sheet = [[UIActionSheet alloc] initWithTitle:@"title"
                                                       delegate:self
                                              cancelButtonTitle:@"Cancel"
                                         destructiveButtonTitle:@"OK"
                                              otherButtonTitles:@"No", nil];
    [sheet showInView:_window];
}

- (void)button3Clicked
{
    NSLog(@"%s", __func__);
    
//    UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"title"
//                                                                   message:@"message"
//                                                            preferredStyle:UIAlertControllerStyleAlert];
//    [self presentViewController:alert
//                       animated:YES
//                     completion:^{ NSLog(@"%s", __func__); }];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSLog(@"%s %ld", __func__, (long)buttonIndex);
}

- (void)actionSheet:(UIActionSheet*)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSLog(@"%s %ld", __func__, (long)buttonIndex);
}

- (void)applicationWillResignActive:(UIApplication *)application {
    NSLog(@"%s", __func__);
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    NSLog(@"%s", __func__);
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    NSLog(@"%s", __func__);
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

//- (void)applicationDidBecomeActive:(UIApplication *)application {
//    NSLog(@"%s", __func__);
//    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
//}

- (void)applicationWillTerminate:(UIApplication *)application {
    NSLog(@"%s", __func__);
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
