//
//  ViewController.m
//  LocalNotificationCenter
//
//  Created by Eizer-N39 on 2015. 3. 12..
//  Copyright (c) 2015년 beila. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;

- (IBAction)click:(id)sender;

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

- (IBAction)click:(id)sender {
    UIApplication* app = [UIApplication sharedApplication];
    if ([app respondsToSelector:@selector(registerUserNotificationSettings:)]) {
        [app registerUserNotificationSettings:[UIUserNotificationSettings
          settingsForTypes:UIUserNotificationTypeAlert
          |UIUserNotificationTypeBadge
          |UIUserNotificationTypeSound
          categories:nil]];
    }
    
    UILocalNotification* note = [[UILocalNotification alloc] init];
    note.alertBody = @"Hello world";
    note.fireDate = [_datePicker date];
    
    NSLog(@"fire at %@", [_datePicker date]);
    
    [app scheduleLocalNotification:note];
}
@end
