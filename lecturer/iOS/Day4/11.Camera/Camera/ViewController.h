//
//  ViewController.h
//  Camera
//
//  Created by chansigi on 3/4/15.
//  Copyright (c) 2015 IOACADEMY. All rights reserved.
//

#import <UIKit/UIKit.h>

// UIImagePickerCOntroller의 delegate가 되려면 아래 2개의 Delegate를 구현해야 합니다.
@interface ViewController
: UIViewController<UIImagePickerControllerDelegate, UINavigationControllerDelegate>
@property (strong, nonatomic) IBOutlet UIImageView *imageView;
- (IBAction)click1:(id)sender;
- (IBAction)click2:(id)sender;
@end

