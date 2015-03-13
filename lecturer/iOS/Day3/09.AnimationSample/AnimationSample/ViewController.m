//
//  ViewController.m
//  AnimationSample
//
//  Created by ioacademy on 13. 3. 2..
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

- (void)dealloc {
    [_lavel1 release];
    [_label2 release];
    [_label1 release];
    [super dealloc];
}
- (IBAction)click1:(id)sender
{
    [ UIView beginAnimations:nil context:nil];
    [ UIView setAnimationDuration:1];
    [ UIView setAnimationRepeatCount:5];
    [ UIView setAnimationRepeatAutoreverses:YES];
    
    // 이제 다양한 속성를 변경한후
    _label1.center = CGPointMake(300,420);
    
    // transform은 위치, 크기, 회전을 나타내는 속성입니다.
    //_label1.transform = CGAffineTransformMakeRotation(3.14);
    _label1.alpha = 0;
    
    [ UIView commitAnimations];
}







- (IBAction)click2:(id)sender
{
    [ UIView beginAnimations:nil context:nil];
    [ UIView setAnimationDuration:1];

    _label2.center = CGPointMake(300,420);

    [ UIView commitAnimations];

    //_label2.center = CGPointMake(0,420);
    
    // 1초 뒤에 특정 함수를 실행하는 방법 - 아주 많이 사용하는 기술.
    [ self performSelector:@selector(foo) withObject:nil afterDelay:1];
}

-(void)foo
{
    [ UIView beginAnimations:nil context:nil];
    [ UIView setAnimationDuration:1];
    
    _label2.center = CGPointMake(0,420);
    
    [ UIView commitAnimations];
}



- (IBAction)click3:(id)sender
{
    //  블럭을 사용한 애니메이션 기술.
    // [ UIView animationWithDuration:1 animations:^(void) {} ];
    // [ UIView animationWithDuration:1 animations:^(void) {} completion:^(BOOL finish){}];
    
    
    [ UIView animateWithDuration:1 animations:^(void)
                                            {
                                                    _label2.center = CGPointMake(320,420);
                                            }
    completion:^(BOOL finish)
    {
    [ UIView animateWithDuration:1 animations:^(void){ _label2.center = CGPointMake(0,420);}];
    }
     ];
}
@end

















