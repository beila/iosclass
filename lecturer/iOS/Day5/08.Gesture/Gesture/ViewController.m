//
//  ViewController.m
//  Gesture
//
//  Created by ioacademy on 13. 3. 9..
//  Copyright (c) 2013년 ioacademy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    // IOS3.0 부터 6개의 제스쳐 클래스가 제공됩니다.
    UIRotationGestureRecognizer* rotGesture = [ [ UIRotationGestureRecognizer alloc]
                                               initWithTarget:self
                                               action:@selector(rotate:)];
    
    [ _imgView addGestureRecognizer:rotGesture];
    
    UIPinchGestureRecognizer* pinchGesture = [ [ UIPinchGestureRecognizer alloc]
                                               initWithTarget:self
                                               action:@selector(pinch:)];
    
    [ _imgView addGestureRecognizer:pinchGesture];
    
    rot = 0;
    scale = 1;
}

-(void)pinch:(UIPinchGestureRecognizer*)pinchGesture
{
    float value = [ pinchGesture scale];
    
    // transform : 위치, 크기, 회전각을 나타내는 3*3 행렬
    //self.imgView.transform = CGAffineTransformMakeScale(scale * value, scale * value);
    
    
    CGAffineTransform t1 = CGAffineTransformMakeScale(scale * value, scale* value);
    CGAffineTransform t2 = CGAffineTransformMakeRotation(rot);
    CGAffineTransform t3 = CGAffineTransformConcat(t1, t2);
    
    self.imgView.transform = t3;
    
    
    
    
    
    
    
    if ( [ pinchGesture state ] == UIGestureRecognizerStateEnded)
    {
        scale = scale * value;
    }
}


-(void)rotate:(UIRotationGestureRecognizer*)rotGesture
{
    float value = [ rotGesture rotation];
    
    self.imgView.transform = CGAffineTransformMakeRotation(value + rot);
    
    NSLog( @"%f", value );
    
    
    if ( [ rotGesture state] == UIGestureRecognizerStateEnded)
    {
        rot = rot + value;
    }
}









- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_imgView release];
    [super dealloc];
}
@end












