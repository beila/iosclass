//
//  ViewController.h
//  NSURL
//
//  Created by chansigi on 3/4/15.
//  Copyright (c) 2015 IOACADEMY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController
: UIViewController< NSURLConnectionDataDelegate, NSURLConnectionDelegate >
{
    NSMutableData* buffer;
}

@property (strong, nonatomic) IBOutlet UIImageView *imgView;

- (IBAction)openURL:(id)sender;
- (IBAction)loadResource:(id)sender;
- (IBAction)httpGet:(id)sender;
- (IBAction)downloadImage:(id)sender;
- (IBAction)downloadImage2:(id)sender;
- (IBAction)downloadImageAsync:(id)sender;

@end

