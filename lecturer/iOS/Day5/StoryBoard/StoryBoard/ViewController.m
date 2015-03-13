//
//  ViewController.m
//  StoryBoard
//
//  Created by chansigi on 3/13/15.
//  Copyright (c) 2015 IOACADEMY. All rights reserved.
//

#import "ViewController.h"
#import "MessageViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)backToTheStart:(UIStoryboardSegue *)segue
{
    NSLog(@"%s", __func__);
}


@end
