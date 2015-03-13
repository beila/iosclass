//
//  AppDelegate.m
//  Sample1
//
//  Created by imguru on 13. 2. 23..
//  Copyright (c) 2013년 imguru. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate
@synthesize  window = _window;

- (void)dealloc
{
//    [ window release];
    
  [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    
    
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    //--------------
    // 지금 까지 배운 내용으로 버튼을 만들어 봅시다. UIButton 클래스입니다.
    
    CGRect r = CGRectMake(100, 100, 100,100); // 아래 처럼 초기화 하지 말고..
                                                // 함수를 사용해서 초기화 합니다.
  //  r.origin.x = 100;
  //  r.origin.y = 100;
  //  r.size.width = 100;
  //  r.size.height = 100;
    
    //UIButton* btn = [[ UIButton alloc] initWithFrame:r ];
    
    
    // 버튼도 Factory Method로 만들수 있다.
    UIButton* btn = [ UIButton buttonWithType:UIButtonTypeDetailDisclosure];
    
    [ btn setFrame:r];
    //----------------
    
    UIColor* color = [ UIColor redColor];
    
  //  [ btn setBackgroundColor:color];
    
  //  btn.backgroundColor = color; // [ btn setBakgroundColor:color] 과 완전히 동일..
    
    
    // 버튼을 누를때 핸들러를 등록해 준다
    [ btn addTarget:self action:@selector(foo) forControlEvents:UIControlEventTouchUpInside];
    
    // 윈도우에 자식으로 붙여 줍니다.
    [ _window addSubview:btn]; // 이순간 버튼의 참조계수는 증가한다.[ btn retain ] 된다.
    
    //[ btn release];
    
    return YES;
}

-(void)foo
{
    NSLog(@"foo");
    
    UIActionSheet* sheet = [ [ UIActionSheet alloc] initWithTitle:@"A"
                                                         delegate:self
                                                cancelButtonTitle:@"취소"
                                           destructiveButtonTitle:@"확인"
                                                otherButtonTitles:@"A", nil];
    
    //sheet.delegate = self;
    
    [ sheet showInView:_window];
    [ sheet release];
}

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSLog(@"선택된 버튼 인덱스 : %d", buttonIndex);
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
