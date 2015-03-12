//
//  View.m
//  Touch
//
//  Created by Eizer-N39 on 2015. 3. 12..
//  Copyright (c) 2015년 beila. All rights reserved.
//

#import "View.h"

@implementation View

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

// touch responder chain:
// view -> view controller -> parent view -> parent view controller
//   -> window -> app delegate

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    NSLog(@"%s", __func__);
    NSLog(@"%ld개 터치됨", [[event allTouches] count]);
    [super touchesBegan:touches withEvent:event];
}

- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event {
    NSLog(@"%s", __func__);
    NSLog(@"%ld개 터치됨", [[event allTouches] count]);
    [super touchesCancelled:touches withEvent:event];
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    NSLog(@"%s", __func__);
    NSLog(@"%ld개 터치됨", [[event allTouches] count]);
    [super touchesEnded:touches withEvent:event];
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    NSLog(@"%s", __func__);
    NSLog(@"%ld개 터치됨", [[event allTouches] count]);
    [super touchesMoved:touches withEvent:event];
}

@end
