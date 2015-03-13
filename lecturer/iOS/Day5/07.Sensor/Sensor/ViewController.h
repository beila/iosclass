//
//  ViewController.h
//  Sensor
//
//  Created by ioacademy on 13. 3. 23..
//  Copyright (c) 2013년 ioacademy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController< UIAccelerometerDelegate>
{
    float x, y, z;
}
- (IBAction)click1:(id)sender;
- (IBAction)click2:(id)sender;

@end
