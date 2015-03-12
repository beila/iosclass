//
//  FirstViewController.m
//  NaviView1
//
//  Created by Eizer-N39 on 2015. 3. 12..
//  Copyright (c) 2015년 beila. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)foo{
    NSLog(@"%s", __func__);
    UIViewController* vc = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)viewDidLoad {
    NSLog(@"%s", __func__);
    [super viewDidLoad];
    
    self.navigationItem.title = @"품목";
    self.navigationItem.prompt = @"언제나 신선한 식품";
//    self.title = @"내 품목";
    
    UIBarButtonItem* button = [[UIBarButtonItem alloc] initWithTitle:@"추가"
                                                               style:UIBarButtonItemStylePlain
                                                              target:self
                                                              action:@selector(foo)];
    self.navigationItem.rightBarButtonItem = button;
}

@end
