//
//  ViewController.h
//  MultiView1
//
//  Created by ioacademy on 13. 3. 2..
//  Copyright (c) 2013년 ioacademy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)click1:(id)sender;
- (IBAction)click2:(id)sender;
@property (retain, nonatomic) IBOutlet UIView *childView;

@end
