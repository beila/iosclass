//
//  AppDelegate.m
//  View1
//
//  Created by ioacademy on 13. 3. 2..
//  Copyright (c) 2013년 ioacademy. All rights reserved.
//

#import "AppDelegate.h"

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

    //-----------------------------------
    // 이제 Window위에 View를 부착한다.
/*
    CGRect rc = CGRectMake(0,0,200,200);
    
    UIView* v = [ [ UIView alloc] initWithFrame:rc];
    
    v.backgroundColor = [ UIColor redColor];
    
    [ self.window addSubview:v]; // 이 순간 retain 되므로(참조계수 2)
    [ v release]; // 반드시 release해서 참조계수를 다시 1로합니다.
                  // 결국 Window 파괴시 모든 자식이 release되어 파괴 됩니다.
    //--------------------------------------
    // 이제 View위에 각종 컨트롤을 붙인후에 타겟 액션으로 이벤트를 처리하면 하나의 프로그램이 완성됩니다.
  */  
    
    //-------------------------------------------------
    // XIB을 Load 한후 XIB안에 있는 모든 객체를 생성합니다.
    
    NSBundle* bundle = [ NSBundle mainBundle]; // app 폴더의 추상화 개념.
    
    NSArray* arr = [ bundle loadNibNamed:@"Step1" owner:nil options:nil];
    
    // arr에는 XIB에 있는 객체중 최상위 객체들의 주소가 있습니다.
    UIView* v = [ arr objectAtIndex:0];
    
    [ self.window addSubview:v];
    
    //----------------------------------------------------
    
    
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
