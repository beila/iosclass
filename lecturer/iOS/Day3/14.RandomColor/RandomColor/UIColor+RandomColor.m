//
//  UIColor+RandomColor.m
//  RandomColor
//
//  Created by chansigi on 3/4/15.
//  Copyright (c) 2015 IOACADEMY. All rights reserved.
//

#import "UIColor+RandomColor.h"

@implementation UIColor (RandomColor)

+ (UIColor*)randomColor {
    UIColor* color = [[ UIColor alloc] initWithRed:drand48()
                                             green:drand48()
                                              blue:drand48()
                                             alpha:1];
    return color;
}

@end
