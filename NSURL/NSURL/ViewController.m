//
//  ViewController.m
//  NSURL
//
//  Created by Eizer-N39 on 2015. 3. 12..
//  Copyright (c) 2015년 beila. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

- (IBAction)loadResource:(id)sender;
- (IBAction)httpGet:(id)sender;
- (IBAction)download1:(id)sender;
- (IBAction)download2:(id)sender;
- (IBAction)download3:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    NSLog(@"%s", __func__);
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)loadResource:(id)sender {
    NSLog(@"%s", __func__);
}

- (IBAction)httpGet:(id)sender {
    NSLog(@"%s", __func__);
}

- (IBAction)download1:(id)sender {
    NSLog(@"%s", __func__);
}

- (IBAction)download2:(id)sender {
    NSLog(@"%s", __func__);
}

- (IBAction)download3:(id)sender {
    NSLog(@"%s", __func__);
}
@end
