//
//  ViewController.m
//  Touch
//
//  Created by ioacademy on 13. 3. 9..
//  Copyright (c) 2013년 ioacademy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


// 터치 메세지 정리
// 1. 4개의 함수가 있다.
// 2. View -> ViewController -> 부모 View -> 부모 컨트롤러 -> Window -> AppDelegate 순으로 전달
//    Responder Chain 이라고 불리는 개념
// 3. 터치 이벤트 발생시 좌표 꺼내는 방법.



// 화면을 터치하면 아래 함수가 호출됩니다.
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"ViewController touches Began");
    NSArray* arr   = [ touches allObjects]; // 터치의 모든 정보를 배열로 꺼낸다.
    UITouch* touch = [ touches anyObject]; // 하나만 관심있을때...
    
    NSLog(@"%d개의 터치", [ arr count]);
    
    for ( int i = 0; i < [ arr count]; i++ )
    {
        UITouch* t = [ arr objectAtIndex:i];
        CGPoint pt = [ t locationInView:self.view];
        
        NSLog(@"%f, %f", pt.x, pt.y);
    }
}

// 왼쪽 옵션키를 누르면 시뮬레이터에서도 2개의 터치를 만들수 있습니다.







-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"touches Moved...");
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"touches end");
}

-(void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"touches Cancel");
}







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

@end











