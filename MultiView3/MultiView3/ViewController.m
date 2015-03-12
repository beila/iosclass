//
//  ViewController.m
//  MultiView3
//
//  Created by Eizer-N39 on 2015. 3. 12..
//  Copyright (c) 2015년 beila. All rights reserved.
//

#import "ViewController.h"
#import "FlipSideViewController.h"

@interface ViewController ()

- (IBAction)click:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    NSLog(@"%s", __func__);
    [super viewDidLoad];
}

- (void)flipSideViewControllerDidFinish:(FlipSideViewController *)controller {
    NSLog(@"%s", __func__);
    [self dismissViewControllerAnimated:YES completion:^(void) {NSLog(@"%s", __func__);}];
}

- (IBAction)click:(id)sender {
    FlipSideViewController *vc = [[FlipSideViewController alloc] initWithNibName:@"FlipSideViewController" bundle:nil];
    vc.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    vc.delegate = self;
    [self presentViewController:vc
                       animated:YES
                     completion:^(void){NSLog(@"%s", __func__);}];
}
@end
