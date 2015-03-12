//
//  FirstViewController.m
//  MultiView
//
//  Created by Eizer-N39 on 2015. 3. 12..
//  Copyright (c) 2015년 beila. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

- (IBAction)click:(id)sender;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    NSLog(@"%s", __func__);
    [super viewDidLoad];
}

- (IBAction)click:(id)sender {
    NSLog(@"%s", __func__);
    
    [self dismissViewControllerAnimated:YES completion:^(void){NSLog(@"%s completion", __func__);}];
}
@end
