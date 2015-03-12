//
//  ViewController.m
//  NotificationCenter
//
//  Created by Eizer-N39 on 2015. 3. 12..
//  Copyright (c) 2015년 beila. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField;

- (IBAction)click:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    NSLog(@"%s", __func__);
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)click:(id)sender {
    NSLog(@"%s", __func__);
    UIDevice* device = [UIDevice currentDevice];
    [device setBatteryMonitoringEnabled:YES];
    
    NSNotificationCenter* nc = [NSNotificationCenter defaultCenter];
    [nc addObserver:self selector:@selector(foo) name:UIDeviceBatteryStateDidChangeNotification object:nil];
    
    [self foo];
    
    [nc addObserver:self selector:@selector(showKeyboard:) name:UIKeyboardWillShowNotification object:nil];
    [nc addObserver:self selector:@selector(hideKeyboard:) name:UIKeyboardWillHideNotification object:nil];
}

- (void)showKeyboard:(NSNotification*)notification {
    NSLog(@"%s", __func__);
    CGRect f = [[UIScreen mainScreen] bounds];
    f.origin.y -= 100;
    self.view.frame = f;
}

- (void)hideKeyboard:(NSNotification*)notification {
    NSLog(@"%s", __func__);
    CGRect f = [[UIScreen mainScreen] bounds];
    self.view.frame = f;
}

- (void)foo {
    NSLog(@"%s", __func__);
    UIDevice* device = [UIDevice currentDevice];
    
    float f = [device batteryLevel];
    NSLog(@"%f", f);
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [_textField resignFirstResponder];
}

@end
