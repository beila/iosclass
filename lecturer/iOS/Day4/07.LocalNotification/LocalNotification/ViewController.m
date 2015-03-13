//
//  ViewController.m
//  LocalNotification
//
//  Created by chansigi on 3/12/15.
//  Copyright (c) 2015 IOACADEMY. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;

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
    
    // 권한 요청 : iOS8
    [[UIApplication sharedApplication]
     registerUserNotificationSettings:
     [UIUserNotificationSettings settingsForTypes:UIUserNotificationTypeAlert|UIUserNotificationTypeBadge|UIUserNotificationTypeSound categories:nil]];
    
    NSDate* date =_datePicker.date;
    
    UILocalNotification *note = [[UILocalNotification alloc] init];
    note.alertBody = @"Wakeup!!!";
    note.fireDate = date;
    
    [[UIApplication sharedApplication] scheduleLocalNotification:note];
}

@end
