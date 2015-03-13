//
//  MyView.m
//  Touch
//
//  Created by ioacademy on 13. 3. 9..
//  Copyright (c) 2013년 ioacademy. All rights reserved.
//

#import "MyView.h"

@implementation MyView



-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"MyView Touches");
    
    // View가 처리한후 계속 다른 객체들(컨트롤러)에게 전달하려면 부모호출

    [ super touchesBegan:touches withEvent:event];
}






- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
