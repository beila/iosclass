//
//  SecondViewController.m
//  NaviView1
//
//  Created by Eizer-N39 on 2015. 3. 12..
//  Copyright (c) 2015년 beila. All rights reserved.
//

#import "SecondViewController.h"
#import "ThirdViewController.h"

@interface SecondViewController ()
- (IBAction)swipe:(id)sender;
- (IBAction)click:(id)sender;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    NSLog(@"%s", __func__);
    [super viewDidLoad];
    
    self.navigationItem.title = @"추가할 항목";
}

- (IBAction)swipe:(id)sender {
    NSLog(@"%s", __func__);
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)click:(id)sender {
    NSLog(@"%s", __func__);
    
    UIViewController* vc = [[ThirdViewController alloc] initWithNibName:@"ThirdViewController" bundle:nil];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
