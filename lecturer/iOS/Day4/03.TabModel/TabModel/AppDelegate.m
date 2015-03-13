//
//  AppDelegate.m
//  TabModel
//
//  Created by ioacademy on 13. 3. 9..
//  Copyright (c) 2013년 ioacademy. All rights reserved.
//

#import "AppDelegate.h"
#import "FirstViewController.h"
#import "SecondViewController.h"


@implementation AppDelegate

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    
    //---------------------------------------------------
    // 1. tab위에 올라갈 ViewController를 먼저 만들고
    FirstViewController* fvc = [ [ [ FirstViewController alloc]
                            initWithNibName:@"FirstViewController" bundle:nil] autorelease];
    
    SecondViewController* svc = [ [ [ SecondViewController alloc]
                                  initWithNibName:@"SecondViewController" bundle:nil] autorelease];
    
    UINavigationController* navi = [ [ [ UINavigationController alloc]
                                      initWithRootViewController:svc] autorelease];
    
    
    // 2. 모든 ViewController를 배열에 담아서
    NSArray* arr = [ NSArray arrayWithObjects: fvc, navi, nil];
    
    
    // 3. 탭컨트롤러를 만들고
    _tabController = [ [ UITabBarController alloc] init];
    
    // 4. 배열을 연결
    _tabController.viewControllers  = arr; // 배열의 갯수 만큼 tab이 생성됩니다.
    
    // 5. 윈도우에 탭을 연결
    self.window.rootViewController = _tabController;
    //----------------------------------------------------------
    
    
    [self.window makeKeyAndVisible];
    return YES;
}



- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
