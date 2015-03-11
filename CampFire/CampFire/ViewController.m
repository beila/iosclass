//
//  ViewController.m
//  CampFire
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
    
    NSMutableArray* array = [[NSMutableArray alloc] init];
    for (int i = 0; i < 17; ++i) {
        NSString* name = [NSString stringWithFormat:@"campFire%02d.gif", i+1];
        UIImage* image = [UIImage imageNamed:name];
        [array addObject:image];
    }
    
    _imageView.animationImages = array;
}

- (IBAction)play:(id)sender {
    NSLog(@"%s %@", __func__, sender);
    [_imageView startAnimating];
}

- (IBAction)pause:(id)sender {
    NSLog(@"%s %@", __func__, sender);
    [_imageView stopAnimating];
}
@end
