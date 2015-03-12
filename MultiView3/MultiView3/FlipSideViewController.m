//
//  FlipSideViewController.m
//  MultiView3
//
//  Created by Eizer-N39 on 2015. 3. 12..
//  Copyright (c) 2015년 beila. All rights reserved.
//

#import "FlipSideViewController.h"

@interface FlipSideViewController ()

- (IBAction)done:(id)sender;

@end

@implementation FlipSideViewController

- (void)viewDidLoad {
    NSLog(@"%s", __func__);
    [super viewDidLoad];
}

- (IBAction)done:(id)sender {
    [_delegate flipSideViewControllerDidFinish:self];
}

@end
