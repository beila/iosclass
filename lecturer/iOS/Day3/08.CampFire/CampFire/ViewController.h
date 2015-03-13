//
//  ViewController.h
//  CampFire
//
//  Created by ioacademy on 13. 3. 2..
//  Copyright (c) 2013년 ioacademy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)play:(id)sender;
- (IBAction)stop:(id)sender;
@property (retain, nonatomic) IBOutlet UIImageView *imgView;

@end
