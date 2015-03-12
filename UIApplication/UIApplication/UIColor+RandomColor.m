//
//  UIColor+RandomColor.m
//  UIApplication
//
//  Created by Eizer-N39 on 2015. 3. 11..
//  Copyright (c) 2015년 beila. All rights reserved.
//

#import "UIColor+RandomColor.h"

@implementation UIColor (RandomColor)

+ (UIColor*)randomColor{
    return [[UIColor alloc] initWithRed:drand48()
                                  green:drand48()
                                   blue:drand48()
                                  alpha:1];
}

@end