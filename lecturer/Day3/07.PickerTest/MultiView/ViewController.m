//
//  ViewController.m
//  MultiView
//
//  Created by chansigi on 3/2/15.
//  Copyright (c) 2015 IOACADEMY. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 2;
}


- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if ( component == 0 ) return 2;
    
    // 0번째 컴포넌트의 선택된 항목을 조사한다.
    int index = [ _picker selectedRowInComponent:0];
    
    if ( index == 0 ) return [ _animals count];
    
    return [ _fruits count];
}

// 아래함수가 약간 복잡하니까 잘 생각해 보세요
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    if ( component == 0 )
    {
        if ( row == 0 )  return @"동물";
        else             return @"과일";
    }
    // component 1의 경우는 배열의 내용을 리턴한다.
    int index = [ _picker selectedRowInComponent:0];
    
    if ( index == 0 ) return [ _animals objectAtIndex:row];
    
    return [_fruits objectAtIndex:row];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    if( component == 0 )
        [ _picker reloadComponent:1];
    
    //  if( component == 1 )
    {
        int index = [ pickerView selectedRowInComponent:0];
        
        if ( index == 0 )
            _label.text = [ _animals objectAtIndex:row];
        else
            _label.text = [ _fruits objectAtIndex:row];
    }
}



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.animals = [NSArray arrayWithObjects:@"사자", @"호랑이", @"곰", @"늑대", @"뱀", @"토끼", nil];
    self.fruits = [NSArray arrayWithObjects:@"사과", @"배", @"바나나", nil];
    
    // 핵심 : Factory Method로 만든 객체는 해당 함수 안에서만 사용해야 합니다. 다른 함수에서는 사용하지 마세요
    // 다른 함수에서 계속 사용하려면 retain 하거나 alloc으로 만들어야 합니다.
    
    // ARC : 강한 참조를 가지는 멤버에 대입해서 사용해야 합니다.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)click:(id)sender {
}
@end
