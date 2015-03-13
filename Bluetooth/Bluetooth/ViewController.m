//
//  ViewController.m
//  Bluetooth
//
//  Created by Eizer-N39 on 2015. 3. 13..
//  Copyright (c) 2015년 beila. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;
- (IBAction)send:(id)sender;
- (IBAction)connect:(id)sender;

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

- (IBAction)send:(id)sender {
}

- (IBAction)connect:(id)sender {
    NSLog(@"%s", __func__);
    GKPeerPickerController* pickerController = [[GKPeerPickerController alloc] init];
    pickerController.delegate = self;
    pickerController.connectionTypesMask = GKPeerPickerConnectionTypeNearby;
    [pickerController show];
}

#pragma mark - GKPeerPickerControllerDelegate

- (GKSession *)peerPickerController:(GKPeerPickerController *)picker sessionForConnectionType:(GKPeerPickerConnectionType)type {
    NSLog(@"%s", __func__);
    
    GKSession* gkSession = [[GKSession alloc] initWithSessionID:@"TEST"
                                                    displayName:@"Player1"
                                                    sessionMode:GKSessionModePeer];
    return gkSession;
}

- (void)peerPickerController:(GKPeerPickerController *)picker didConnectPeer:(NSString *)peerID toSession:(GKSession *)session {
    NSLog(@"%s %@에 연결되었습니다.", __func__, [session displayNameForPeer:peerID]);
    
    [picker dismiss];
    
    session.delegate = self;
    [session setDataReceiveHandler:self withContext:nil];
}

#pragma mark - GKSessionDelegate

@end
