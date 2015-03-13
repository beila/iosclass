//
//  ViewController.m
//  UIApplication
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
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)click:(id)sender
{
    // 사용자가 만들지 않아도 실행 초기에 UIApplication 객체가 생성됩니다
    
    UIApplication* app = [ UIApplication sharedApplication];
    
    app.statusBarHidden = YES;
    app.idleTimerDisabled = YES; // 시간이 경과해도 화면을 끄지말아 달라.
    
    // 스키마로 다른 프로그램 실행하기
    // NSURL* url = [ NSURL URLWithString:@"http://www.naver.com"];
    
    // NSURL* url = [ NSURL URLWithString:@"tel:0101112222"]; // 전화 걸기
    // NSURL* url = [ NSURL URLWithString:@"sms:0101112222"];
 
     NSURL* url = [ NSURL URLWithString:@"ABCDE:123456789"];
     [ app openURL:url];
    
//     NSString* text = @"오늘 저녁 뭐냐?";
//     NSString* url = [NSString stringWithFormat:@"line://msg/text/%@",
//                         [text stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
//
//     [app openURL:[NSURL URLWithString:url]];
    
    
    //NSLog( @"%@", [ app ap]
}
@end

















