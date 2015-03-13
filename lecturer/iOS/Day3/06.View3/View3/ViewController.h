//
//  ViewController.h
//  View3
//
//  Created by ioacademy on 13. 3. 2..
//  Copyright (c) 2013년 ioacademy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (retain, nonatomic) IBOutlet UILabel* label1;
@property (retain, nonatomic) IBOutlet UILabel *label2;
@property (retain, nonatomic) IBOutlet UILabel *label3;
- (IBAction)click2:(id)sender;
- (IBAction)click3:(id)sender;
- (IBAction)click4:(UIButton *)sender forEvent:(UIEvent *)event;

-(IBAction)click1;
@end


// #define IBOutlet
// #define IBAction void

// 입니다. 전처리과정을 거치면 IBOutlet은 제거 되고
// IBAction 은 void로 변경될 뿐입니다.















