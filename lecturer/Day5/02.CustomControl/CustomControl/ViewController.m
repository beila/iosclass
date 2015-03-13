//
//  ViewController.m
//  CustomControl
//
//  Created by chansigi on 3/4/15.
//  Copyright (c) 2015 IOACADEMY. All rights reserved.
//

#import "ViewController.h"
#import "MyAlertView.h"

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

- (BOOL)prefersStatusBarHidden {
    return YES;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    MyAlertView* alert = [ [ MyAlertView alloc]
                          initWithTitle:@"AAA"
                          message:@"Message"
                          delegate:nil
                          cancelButtonTitle:@"확인"
                          otherButtonTitles:nil];
    
    [ alert show];
}

@end
