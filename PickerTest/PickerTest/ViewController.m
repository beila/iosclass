//
//  ViewController.m
//  PickerTest
//
//  Created by Eizer-N39 on 2015. 3. 11..
//  Copyright (c) 2015년 beila. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    NSLog(@"%s", __func__);
    [super viewDidLoad];
    
    self.data = @{@"동물": @[@"사자", @"곰", @"바다표범"],
                  @"과일": @[@"딸기", @"배", @"천리향", @"복숭아", @"사과"]
                  };
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    NSLog(@"%s %@", __func__, pickerView);
    return 2;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    NSLog(@"%s component:%ld", __func__, component);
    if (component == 0)
        return [_data count];
    return [[self dataAtSecondComponentInPickerView:pickerView] count];
}

- (NSArray*)dataAtSecondComponentInPickerView:(UIPickerView*)pickerView{
    id firstKey = _data.allKeys[[pickerView selectedRowInComponent:0]];
    return _data[firstKey];
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    NSLog(@"%s component:%ld row:%ld", __func__, component, row);
    if (component == 0)
        return _data.allKeys[row];
    
    return [self dataAtSecondComponentInPickerView:pickerView][row];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    NSLog(@"%s component:%ld row:%ld", __func__, component, row);
    if (component == 0)
        [pickerView reloadComponent:1];
}

@end
