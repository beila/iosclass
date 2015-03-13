//
//  ViewController.m
//  Thread
//
//  Created by Eizer-N39 on 2015. 3. 13..
//  Copyright (c) 2015년 beila. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
- (IBAction)start:(id)sender;
- (IBAction)stop:(id)sender;
- (IBAction)lockTest:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    NSLog(@"%s", __func__);
    [super viewDidLoad];
}

- (IBAction)start:(id)sender {
}

- (IBAction)stop:(id)sender {
}

NSLock* lock;
- (IBAction)lockTest:(id)sender {
    lock = [[NSLock alloc] init];
    
    [NSThread detachNewThreadSelector:@selector(goo) toTarget:self withObject:nil];
    [NSThread detachNewThreadSelector:@selector(goo) toTarget:self withObject:nil];
    [NSThread detachNewThreadSelector:@selector(goo) toTarget:self withObject:nil];
}

int x = 100;
int y = 100;
int z = 100;
- (void)goo{
    // 더 복잡한 병렬수행이 필요하면 grand central dispatch를 공부해라.
    
    @synchronized(self) {
        x = 100;
        usleep(5);
        x = x + 1;
        NSLog(@"\t%d", x);
    }
    
    [lock lock];
    y = 100;
    usleep(5);
    y = y + 1;
    [lock unlock];
    NSLog(@"\t\t%d", y);
    
    z = 100;
    usleep(5);
    z = z + 1;
    NSLog(@"\t\t\t%d", z);
}

@end
