//
//  MyNagivationBar.m
//  CustomView
//
//  Created by Eizer-N39 on 2015. 3. 13..
//  Copyright (c) 2015년 beila. All rights reserved.
//

#import "MyNagivationBar.h"

@implementation MyNagivationBar

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        UIImageView* imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
        imageView.image = [UIImage imageNamed:@"0.png"];
        [self insertSubview:imageView atIndex:0];
    }
    return self;
}

@end
