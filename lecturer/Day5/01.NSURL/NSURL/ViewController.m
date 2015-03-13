//
//  ViewController.m
//  NSURL
//
//  Created by chansigi on 3/4/15.
//  Copyright (c) 2015 IOACADEMY. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)openURL:(id)sender {
    NSURL* url = [ NSURL URLWithString:@"http://www.naver.com"];
    
    UIApplication* app = [ UIApplication sharedApplication];
    
    [ app openURL:url];
}

- (IBAction)loadResource:(id)sender {
    UIImage* img = [ UIImage imageNamed:@"local.jpg"];
    
    //------------------------------------------
    NSBundle* bundle = [ NSBundle mainBundle];
    
    NSString* path = [ bundle pathForResource:@"local" ofType:@"jpg"];
    
    NSLog(@"%@", path);
    //-------------------------------------------------
    
    NSURL* url = [ NSURL fileURLWithPath:path];
    NSData* data = [ NSData dataWithContentsOfURL:url];
    UIImage* img2 = [ UIImage imageWithData:data];
    _imgView.image = img2;
}

- (IBAction)httpGet:(id)sender {
    NSURL* url = [ NSURL URLWithString:@"http://www.naver.com"];
    
    // NSURL 객체를 만든후에 각종 클래스의 initWithContentsOfURL 함수 사용
    NSString* s = [ NSString stringWithContentsOfURL:url
                                            encoding:NSUTF8StringEncoding error:nil];
    
    NSLog(@"%@", s);
}

- (IBAction)downloadImage:(id)sender {
    NSURL* url = [ NSURL URLWithString:@"http://www.iphonedevbook.com/more/10/cover.png"];
    
    // image, mp3, wave등은 모두 NSData로 가져오면됩니다.
    NSData* data = [ NSData dataWithContentsOfURL:url];
    
    UIImage* image = [ UIImage imageWithData:data];
    
    _imgView.image = image;
}

- (IBAction)downloadImage2:(id)sender {
    NSURL* url = [ NSURL URLWithString:@"http://www.iphonedevbook.com/more/10/cover.png"];
    
    // HTTTP Request protocol 클래스화 한것.
    NSURLRequest* request = [ NSURLRequest requestWithURL:url];

    NSHTTPURLResponse* response;
    
    // NSURLConnection 의 정적 함수 사용
    NSData* data = [ NSURLConnection sendSynchronousRequest:request
                                          returningResponse:&response
                                                      error:nil];
    
    if ( response == nil )
    {
        NSLog(@"서버가 없습니다.");
        return;
    }
    
    // 이제  response를 분석하면 됩니다.
    NSInteger code = [ response statusCode ];
    
    NSDictionary* dic = [ response allHeaderFields];
    
    NSString* type = [ dic objectForKey:@"Content-Type"];
    
    
    if ( code >= 200 && code < 300 && [ type hasPrefix:@"image"])
    {
        _imgView.image = [ UIImage imageWithData:data];
    }
}

- (IBAction)downloadImageAsync:(id)sender {
    NSURL* url = [ NSURL URLWithString:@"http://www.iphonedevbook.com/more/10/cover.png"];
    
    NSURLRequest* request = [ NSURLRequest requestWithURL:url];
    
    // NSURLConnection 의 정적함수 호출 => 동기 방식
    // NSURLConnection 의 객체 생성 - 비동기 방식
    
    NSURLConnection* con = [ [ NSURLConnection alloc] initWithRequest:request delegate:self];
    
    if ( con == nil )
    {
        NSLog(@"서버가 없습니다.");
    }
    else
    {
        NSLog(@"요청성공");
    }
}

-(void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response
{
    NSLog(@"응답이 처음 도착");
    buffer = [ [ NSMutableData alloc] init];
}

-(void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    [ buffer appendData:data];
    
    _imgView.image = [ UIImage imageWithData:buffer];
    
    NSLog(@"도착한 data : %ld, 총 data : %ld", [data length], [buffer length]);
}

-(void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    NSLog(@"수신완료");
    
    _imgView.image = [ UIImage imageWithData:buffer];
}


@end
