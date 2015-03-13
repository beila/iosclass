//
//  ViewController.m
//  MultiView1
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
/*
- (IBAction)click1:(id)sender
{
    // 자식 View를 붙인다
    //[ self.view addSubview:_childView]; // z order가 제일 뒤가 된다.
    
    [ UIView beginAnimations:nil context:nil];
    [ UIView setAnimationDuration:1];
    // view를 붙이거나 제거 할때 사용하는 전용 animation
    [ UIView setAnimationTransition:UIViewAnimationTransitionCurlUp
                            forView:self.view
                              cache:YES];
    
    [ self.view insertSubview:_childView atIndex:0]; // z order를 0으로 붙인다.(첫번째 자식)
    [ UIView commitAnimations];
}
 */

-(IBAction)click1:(id)sender
{
    _childView.frame = CGRectMake(0, 0, 0, 0);
    _childView.transform = CGAffineTransformMakeRotation(3.14); // 180도를 미리 회전해 놓고..
    
    [ self.view insertSubview:_childView atIndex:0];
    
    [ UIView beginAnimations:nil context:nil];
    [ UIView setAnimationDuration:1];
    
    _childView.frame = CGRectMake(0, 0, 320, 480);
    _childView.transform = CGAffineTransformMakeRotation(0); // 다시 0도 
    
    [ UIView commitAnimations];
}






- (IBAction)click2:(id)sender
{
    [ UIView beginAnimations:nil context:nil];
    [ UIView setAnimationDuration:1];
    [ UIView setAnimationTransition:UIViewAnimationTransitionCurlDown
                            forView:self.view
                              cache:YES];
    
    [ _childView removeFromSuperview];
    
    [ UIView commitAnimations];
}









- (void)dealloc {
    [_childView release];
    [super dealloc];
}
@end

















