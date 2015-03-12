//
//  ViewController.m
//  MultiView
//
//  Created by Eizer-N39 on 2015. 3. 12..
//  Copyright (c) 2015년 beila. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UIView *childView;

- (IBAction)click1:(id)sender;
- (IBAction)click2:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    NSLog(@"%s", __func__);
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (IBAction)click1:(id)sender {
    NSLog(@"%s", __func__);
    
    _childView.frame = CGRectMake(0,0,0,0);
    _childView.transform = CGAffineTransformMakeRotation(3.14);
    
    [self.view insertSubview:_childView atIndex:0];
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.5];
    
    _childView.frame = CGRectMake(0,0,320,480);
    _childView.transform = CGAffineTransformMakeRotation(0);
    
    [UIView commitAnimations];

}

- (IBAction)click2:(id)sender {
    NSLog(@"%s", __func__);
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1];
    [UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:self.view cache:YES];
    
    [_childView removeFromSuperview];
    
    [UIView commitAnimations];
}
@end
