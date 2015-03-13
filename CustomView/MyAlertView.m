//
//  MyAlertView.m
//  CustomView
//
//  Created by Eizer-N39 on 2015. 3. 13..
//  Copyright (c) 2015년 beila. All rights reserved.
//

#import "MyAlertView.h"

@implementation MyAlertView

- (instancetype)initWithTitle:(NSString *)title
                      message:(NSString *)message
                     delegate:(id)delegate
            cancelButtonTitle:(NSString *)cancelButtonTitle
            otherButtonTitles:(NSString *)otherButtonTitles, ... {
    self = [super initWithTitle:title
                        message:message
                       delegate:delegate
              cancelButtonTitle:cancelButtonTitle
              otherButtonTitles:otherButtonTitles, nil];
    if (self) {
        self.title = [NSString stringWithFormat:@"===%@===", self.title];
    }
    return self;
}

@end
