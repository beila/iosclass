//
//  FirstViewController.m
//  NaviModel1
//
//  Created by ioacademy on 13. 3. 2..
//  Copyright (c) 2013년 ioacademy. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"



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
    
    self.navigationItem.title = @"품목";
    self.navigationItem.prompt  = @"언제나 신선한 식품";
    
    UIBarButtonItem* btn = [ [ UIBarButtonItem alloc] initWithTitle:@"추가"
                                                              style:UIBarButtonItemStylePlain
                                                             target:self
                                                             action:@selector(foo)];
    self.navigationItem.leftBarButtonItem = btn;
    [ btn release];
}
-(void)foo
{
    NSLog(@"항목추가");
}

// 잘되신 분은 SecondViewController의 ViewDidLoad에서 self.navigationItem.title 정도만 변경해 보세요








- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)click:(id)sender
{
    // 1. view controller를 만들고
    SecondViewController* svc = [ [ SecondViewController alloc]
                                 initWithNibName:@"SecondViewController" bundle:nil];
    
    // 2. navi에 있는 모든 viewController는 naviController의 포인터를 알고 있다.
    [ self.navigationController pushViewController:svc animated:YES];
    
    [ svc release];
}
@end

// 실행해서 버튼을 눌러 보세요
// 



















