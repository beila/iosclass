//
//  ViewController.m
//  Sensor
//
//  Created by ioacademy on 13. 3. 23..
//  Copyright (c) 2013년 ioacademy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)click1:(id)sender
{
    // 1. 근접센서는 통보 센터로 작업 합니다
    UIDevice* device = [ UIDevice currentDevice];
    
    [ device setProximityMonitoringEnabled:YES];
    
    
    NSNotificationCenter* notif = [ NSNotificationCenter defaultCenter];
    
    [ notif addObserver:self selector:@selector(foo)
                   name:UIDeviceProximityStateDidChangeNotification object:nil];
}

-(void)foo
{
    UIDevice* device = [ UIDevice currentDevice];
    
    if ( [ device proximityState] == YES )
    {
        NSLog(@"근접..");
    }
    else
    {
        NSLog(@"근접하지 않음");
    }
}

- (IBAction)click2:(id)sender
{
    // 가속도 센서입니다.
    UIAccelerometer* accel = [ UIAccelerometer sharedAccelerometer];
    
    accel.updateInterval = 1.0/60.0; // 1 초당 60회
    
    accel.delegate = self; // 이순간 통보가 시작됩니다.
    
    // CMotion 클래스도 있습니다.. google에서 sample 하면 보실수 있습니다.
}

-(void)accelerometer:(UIAccelerometer *)accelerometer didAccelerate:(UIAcceleration *)acceleration
{
//    if ( acceleration.x > 2 || acceleration.y > 2 || acceleration.z > 2 )
//        NSLog(@"Shake....");
    
    //NSLog(@"%06f, %06f, %06f", acceleration.x, acceleration.y, acceleration.z);
    
    // low pass filter
    x = ( x * 0.9 )+( acceleration.x * 0.1);
    y = ( y * 0.9 )+( acceleration.y * 0.1);
    z = ( z * 0.9 )+( acceleration.z * 0.1);
    
    NSLog(@"%06f, %06f, %06f", x, y, z);
}

// 실행해서 장치를 흔들어 보세요.
@end


//  developer.apple.com 에서 member center에 접속해 보세요

// id : ioacademy
// pass : ioacademy123
































