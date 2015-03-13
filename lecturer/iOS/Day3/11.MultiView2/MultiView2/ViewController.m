//
//  ViewController.m
//  MultiView2
//
//  Created by ioacademy on 13. 3. 2..
//  Copyright (c) 2013년 ioacademy. All rights reserved.
//

#import "ViewController.h"
#import "FirstViewController.h"


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

- (IBAction)click:(id)sender
{
    // 1. ViewController 를 만들면서 XIB를 로드하고
    FirstViewController* fvc = [[ [ FirstViewController alloc] initWithNibName:@"FirstViewController" bundle:nil] autorelease];;
    
    //fvc.delegate = self;
    
    // 2. 나타낸다.
    // 나타날때 효과를 변경할수도 있다.
    fvc.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    
    [ self presentViewController:fvc animated:YES completion:^{}];// ^(void){}에서 (void)생략가능
    
    // 3. alloc으로 만들었으므로 파괴
    //[ fvc release];
}
@end
























