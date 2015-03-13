//
//  ViewController.m
//  View3
//
//  Created by ioacademy on 13. 3. 2..
//  Copyright (c) 2013년 ioacademy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)click2:(id)sender
{
    _label2.text = @"hello";
}

- (IBAction)click3:(id)sender
{
    _label3.text = @"hello";
}

- (IBAction)click4:(UIButton *)sender forEvent:(UIEvent *)event
{
    NSString* s = sender.titleLabel.text;
    
    if ( [ s isEqualToString:@"OK"]) // 문자열 비교 방법.. 
    {
        NSLog(@"OK버튼");
    }
    else
    {
        NSLog(@"Button 버튼");
    }
}

//  http://www.appsamuck.com/day2.html



//www.naver.com  "iphone bonfire" 검색해보세요 

// 잘 되신 분은 3번째 label과 3번째 버튼도 연결하세요..
// 버튼 누를때 글자를 변경해 보세요..




-(void)click1
{
    // property 이름은 label1 이지만 멤버 변수는 _label1이 됩니다.
    _label1.text = @"hello"; // self.label1 = @"hello";
}





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

- (void)dealloc {
    [_label2 release];
    [_label3 release];
    [super dealloc];
}
@end
