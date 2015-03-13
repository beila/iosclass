//
//  ViewController.h
//  MultiView
//
//  Created by chansigi on 3/2/15.
//  Copyright (c) 2015 IOACADEMY. All rights reserved.
//

#import <UIKit/UIKit.h>

// xxxDataSource 프로토콜 : data를 채우기 위한 함수의 집합
// xxxDelegate 프로토콜 : event를 처리하기 위한 함수의 집합.
@interface ViewController : UIViewController<UIPickerViewDataSource, UIPickerViewDelegate>

@property (strong, nonatomic) NSArray* animals;
@property (strong, nonatomic) NSArray* fruits;

@property (weak, nonatomic) IBOutlet UIPickerView *picker;
@property (weak, nonatomic) IBOutlet UILabel *label;

- (IBAction)click:(id)sender;

@end

