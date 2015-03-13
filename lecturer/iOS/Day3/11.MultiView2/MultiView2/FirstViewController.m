//
//  FirstViewController.m
//  MultiView2
//
//  Created by ioacademy on 13. 3. 2..
//  Copyright (c) 2013년 ioacademy. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)click:(id)sender
{
    // Modal로 나타난 현재 창을 닫으려면
    // [ 부모컨트롤러 diss...] 함수를 호출해야 합니다.
    
    // 아래 처럼 하면
    // 1. self 위에 다시 ViewControler가 있다면 내린다.
    // 2. Self 위에 ViewController가 없다면 자신을 스스로 내린다.
    [ self dismissViewControllerAnimated:YES completion:^{}];
}
@end




















