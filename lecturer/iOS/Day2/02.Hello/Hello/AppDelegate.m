//
//  AppDelegate.m
//  Hello
//
//  Created by imguru on 13. 2. 23..
//  Copyright (c) 2013년 imguru. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

-(void)dealloc
{
    [ _window release ];
    [ super dealloc];
}

- (BOOL)application:(UIApplication *)application willFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    //CGRect rc = CGRectMake(0, 0,320,480);
    
    // 화면 해상도를 얻어 온다.
    UIScreen* screen = [ UIScreen mainScreen];
    
    // 구조체 CGRect
    CGRect rc = [ screen bounds];
    
    _window = [ [ UIWindow alloc] initWithFrame:rc];
    
    
 //   self.window = [ [[ UIWindow alloc] initWithFrame:[[ UIScreen mainScreen] bounds] autorelease];
    
    
    _window.backgroundColor = [ UIColor whiteColor];
    [ _window makeKeyAndVisible];
    
    NSLog(@"App이 처음 실행됩니다.");
    return YES;
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    NSLog(@"%s", __FUNCTION__); 
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    NSLog(@"%s", __FUNCTION__);     
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    NSLog(@"%s", __FUNCTION__);
}
@end











