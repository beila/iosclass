//
//  ViewController.m
//  Thread
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


int x = 100; // 전역변수

NSLock* lock;

- (void)foo
{
     [lock lock];
    
//    @synchronized(self) // java 와 유사..
//    {
        x = 100;
        usleep(5);
        x = x + 1;
        NSLog(@"%d", x);
//    }
    
     [lock unlock];
}

- (IBAction)start:(id)sender {
    lock = [[NSLock alloc] init];
    
    [NSThread detachNewThreadSelector:@selector(foo) toTarget:self withObject:nil];
    [NSThread detachNewThreadSelector:@selector(foo) toTarget:self withObject:nil];
    [NSThread detachNewThreadSelector:@selector(foo) toTarget:self withObject:nil];
}

- (IBAction)stop:(id)sender {
    
}



#if 0
- (void)updateLabel:(NSString*)text
{
    _label.text = text;
}

- (void)foo
{
    for (int i = 0 ; i < 100 ; i++)
    {
        NSString* s = [NSString stringWithFormat:@"%02d", i];
        
        // _label.text = s;
        // UI 업데이트는 Main Thread 에 요청해야 한다.
        [self performSelectorOnMainThread:@selector(updateLabel:)
                               withObject:s
                            waitUntilDone:YES];
        
        [NSThread sleepForTimeInterval:0.3];
    }
    
}

- (IBAction)start:(id)sender {
    [NSThread detachNewThreadSelector:@selector(foo) toTarget:self withObject:nil];
}

- (IBAction)stop:(id)sender {
    
}
#endif

#if 0
- (void)foo
{
    while (!_thread.isCancelled)
    {
        int i = 0;
        NSLog(@"foo : %d", i++);
        
        // 1초간 대기
        [NSThread sleepForTimeInterval:1];
    }
}

- (IBAction)start:(id)sender {
    _thread = [[NSThread alloc] initWithTarget:self selector:@selector(foo) object:nil];
    [_thread start];
}

- (IBAction)stop:(id)sender {
    [_thread cancel];
}
#endif
@end





















