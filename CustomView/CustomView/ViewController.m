//
//  ViewController.m
//  CustomView
//
//  Created by Eizer-N39 on 2015. 3. 13..
//  Copyright (c) 2015년 beila. All rights reserved.
//

#import "ViewController.h"
#import "MyAlertView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    MyAlertView* alertView = [[MyAlertView alloc] initWithTitle:@"title"
                                                        message:@"message"
                                                       delegate:self
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
    [alertView show];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
