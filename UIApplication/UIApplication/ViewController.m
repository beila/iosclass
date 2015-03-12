//
//  ViewController.m
//  UIApplication
//
//  Created by Eizer-N39 on 2015. 3. 11..
//  Copyright (c) 2015년 beila. All rights reserved.
//

#import "ViewController.h"
#import "UIColor+RandomColor.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    NSLog(@"%s", __func__);
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)click:(UIButton *)sender {
    NSLog(@"%s", __func__);
    UIApplication* app = [UIApplication sharedApplication];
    
    app.idleTimerDisabled = YES;
    
//    NSURL* url = [NSURL URLWithString:@"http://www.naver.com"];
//    NSURL* url = [NSURL URLWithString:@"tel://010-3843-3183"];
//    NSURL* url = [NSURL URLWithString:@"sms://010-3843-3183"];
    NSURL* url = [NSURL URLWithString:@"ABCDE://XYZYX"];
    [app openURL:url];
}

- (BOOL)prefersStatusBarHidden {
    return YES;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    NSLog(@"%s", __func__);
    self.view.backgroundColor = [UIColor randomColor];
}

@end
