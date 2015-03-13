//
//  ViewController.h
//  Thread
//
//  Created by chansigi on 3/4/15.
//  Copyright (c) 2015 IOACADEMY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction)start:(id)sender;
- (IBAction)stop:(id)sender;

@property (strong, nonatomic) NSThread *thread;
@property (strong, nonatomic) IBOutlet UILabel *label;



@end

