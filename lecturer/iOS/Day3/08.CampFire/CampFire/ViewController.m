//
//  ViewController.m
//  CampFire
//
//  Created by ioacademy on 13. 3. 2..
//  Copyright (c) 2013년 ioacademy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    // XIB가 로드 되고 View가 만들어진 후에 바로 이함수가 호출됩니다.
    // 여기서 View의 초기화 코드를 작성하면 됩니다.
    
    // 1개의 그림을 Load하는 방법
    //UIImage* img = [ UIImage imageNamed:@"campFire01.gif"];
    
    NSMutableArray* arr = [ [ NSMutableArray alloc] init];
    
    for ( int i = 0; i < 17; i++)
    {
        NSString* s = [ NSString stringWithFormat:@"campFire%02d.gif", i+1];
        UIImage* img = [ UIImage imageNamed:s];
        [ arr addObject:img];
    }
    
    // imageview에 그림의 배열을 연결해 준다.
    _imgView.animationImages = arr;
    [ arr release];
}

- (IBAction)play:(id)sender
{
    _imgView.animationDuration = 3; // 0.1
    [ _imgView startAnimating];
}

- (IBAction)stop:(id)sender
{
    if ( [ _imgView isAnimating])
        [ _imgView stopAnimating];
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)dealloc {
    [_imgView release];
    [super dealloc];
}
@end
