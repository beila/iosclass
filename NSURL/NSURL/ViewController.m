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
    
    NSBundle* bundle = [NSBundle mainBundle];
    NSString* path = [bundle pathForResource:@"Gerardus Mercator’s 503rd Birthday"
                                      ofType:@"png"];
    NSLog(@"%@", path);
    
    NSURL* url = [NSURL fileURLWithPath:path];
    NSData* data = [NSData dataWithContentsOfURL:url];
    UIImage* image = [UIImage imageWithData:data];
    
    _imageView.image = image;
}

- (IBAction)httpGet:(id)sender {
    NSLog(@"%s", __func__);
    NSURL* url = [NSURL URLWithString:@"http://www.google.com/doodles/"];
    NSString* s = [NSString stringWithContentsOfURL:url
                                           encoding:NSUTF8StringEncoding
                                              error:nil];
    NSLog(@"%@", s);
}

- (IBAction)download1:(id)sender {
    NSLog(@"%s", __func__);
    NSURL* url = [NSURL URLWithString:@"http://lh6.ggpht.com/meJnxD78bAaNAE-l86PEGAY6uU0dndrl0V_uRdSDkFvF8IxNBpRAe3Pt3de_WGn5l1-x2QRfT8DYDvQhuHjGccNaw02LXcsWhL8SjYmZ=s660"];
    NSData* data = [NSData dataWithContentsOfURL:url];
    _imageView.image = [UIImage imageWithData:data];
}

- (IBAction)download2:(id)sender {
    NSLog(@"%s", __func__);
    
    NSURL* url = [NSURL URLWithString:@"http://lh4.ggpht.com/6xy1lqxirmLA9i9qD6CVQqJjbGmkMBNc4tYZ6jmHaoqe-PQBMMQlV_Y8Wr6XGwjUlrQAkyOOj-0DejIuSFoFK9cYGRaC96i3G1o2xV8=s660"];
    NSURLRequest* request = [NSURLRequest requestWithURL:url];
    NSHTTPURLResponse* response;
    
    NSData* data = [NSURLConnection sendSynchronousRequest:request
                                         returningResponse:&response
                                                     error:nil];
    
    if (response == nil) {
        NSLog(@"서버가 없습니다.");
        return;
    }
    
    NSInteger code = [response statusCode];
    NSLog(@"statusCode : %ld", code);
    
    NSDictionary* dic = [response allHeaderFields];
    NSString* type = [dic objectForKey:@"Content-type"];
    if ([type hasPrefix:@"image"]) {
        _imageView.image = [UIImage imageWithData:data];
    }
}

- (IBAction)download3:(id)sender {
    NSLog(@"%s", __func__);
    
    NSURL* url = [NSURL URLWithString:@"http://www.google.com/logos/2011/scott11-hp.jpg"];
    NSURLRequest* request = [NSURLRequest requestWithURL:url];
    NSURLConnection* connection = [[NSURLConnection alloc] initWithRequest:request
                                                                  delegate:self
                                                          startImmediately:YES];
    
    if (connection == nil) {
        NSLog(@"서버가 없습니다.");
    }
}
    
#pragma mark - NSURLConnectionDelegate

NSMutableData* buffer;

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response {
    NSLog(@"%s", __func__);
    buffer = [[NSMutableData alloc] init];
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {
    NSLog(@"%s", __func__);
    [buffer appendData:data];
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection {
    NSLog(@"%s", __func__);
    _imageView.image = [UIImage imageWithData:buffer];
}

@end
