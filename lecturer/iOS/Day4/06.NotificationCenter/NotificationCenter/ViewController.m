//
//  ViewController.m
//  NotificationCenter
//
//  Created by ioacademy on 13. 3. 9..
//  Copyright (c) 2013년 ioacademy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    
	// 통보센터 개념..
    NSNotificationCenter* nc = [ NSNotificationCenter defaultCenter];
    
    [ nc addObserver:self selector:@selector(foo) name:@"RECEIVEMAIL" object:nil];
    [ nc addObserver:self selector:@selector(goo) name:@"RECEIVEMAIL" object:nil];
    
    
    
    // 배터리를 통보 받는다.
    
    UIDevice* device = [ UIDevice currentDevice];
    
    [ device setBatteryMonitoringEnabled:YES];
    
    
    [ nc addObserver:self selector:@selector(hoo)
                name:UIDeviceBatteryLevelDidChangeNotification object:nil];
    
    // 처음은 통보없이 조사..
    [ self hoo];
    
    // 키보드가 나타나는 순간의 통보를 요청한다.
    [ nc addObserver:self selector:@selector(showKeyboard:)
                name:UIKeyboardWillShowNotification object:nil];
    
    [ nc addObserver:self selector:@selector(hideKeyboard:)
                name:UIKeyboardWillHideNotification object:nil];    
}

-(void)showKeyboard:(NSNotification*)notif
{
    [ UIView beginAnimations:nil context:nil];
    [ UIView setAnimationDuration:0.3];
    
    self.view.frame = CGRectMake(0, -216,320,480);
    
    [ UIView commitAnimations];
}

-(void)hideKeyboard:(NSNotification*)notif
{
    self.view.frame = CGRectMake(0, 0,320,480);
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    // 키보드 내리는 법
    [ _txtField1 resignFirstResponder] ;
    [ _txtField2 resignFirstResponder] ;
}




-(void)hoo
{
    UIDevice* device = [ UIDevice currentDevice]; // 장치에 관련된 모든 장보는 이 객체를 사용합니다
    float f = [ device batteryLevel];// 0 ~ 1
    NSLog(@"%f", f);
}





-(void)foo { NSLog(@"foo"); }
-(void)goo { NSLog(@"goo"); }

- (IBAction)click1:(id)sender
{
    NSNotificationCenter* nc = [ NSNotificationCenter defaultCenter];

    [ nc postNotificationName:@"RECEIVEMAIL" object:nil];
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)click2:(id)sender {
}
- (void)dealloc {
    [_txtField1 release];
    [_txtField2 release];
    [super dealloc];
}
@end








