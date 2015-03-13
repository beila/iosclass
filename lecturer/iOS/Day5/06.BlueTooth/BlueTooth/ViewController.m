//
//  ViewController.m
//  BlueTooth
//
//  Created by ioacademy on 13. 3. 23..
//  Copyright (c) 2013년 ioacademy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)click1:(id)sender
{
    // 1:1 접속은 간단하게 지원합니다.
    pickerController = [ [ GKPeerPickerController alloc] init];
    
    pickerController.delegate = self;
    pickerController.connectionTypesMask = GKPeerPickerConnectionTypeNearby;
    
    [ pickerController show];
}

// picker 창이 나타날때 아래 함수가 호출됩니다.
-(GKSession*)peerPickerController:(GKPeerPickerController *)picker sessionForConnectionType:(GKPeerPickerConnectionType)type
{
    // 여기서 GKSession 객체를 리턴해야 합니다
    gkSession = [ [ GKSession alloc] initWithSessionID:@"TEST"
                                           displayName:@"CHANSIK2"
                                           sessionMode:GKSessionModePeer]; // 1:1 통신
    return gkSession;
}


// 접속 허용버튼을 누르면 아래 함수가 호출됩니다.
-(void)peerPickerController:(GKPeerPickerController *)picker didConnectPeer:(NSString *)peerID toSession:(GKSession *)session
{
    NSLog(@"%@ 접속 되었습니다.", [gkSession displayNameForPeer:peerID] );
    
    [ picker dismiss];
    [ picker release];
    
    session.delegate = self;
    [ session setDataReceiveHandler:self withContext:nil];
}

// 이제 접속 상태가 변경될때 마다 아래 함수가 호출되니다.
-(void)session:(GKSession *)session peer:(NSString *)peerID didChangeState:(GKPeerConnectionState)state
{
    if ( state == GKPeerStateConnected ){NSLog(@"접속됨");}
    else if( state == GKPeerStateDisconnected)
    {
        NSLog(@"접속 끊어짐");
    }
}
// data가 도착하면 아래 함수가 호출됩니다.
-(void)receiveData:(NSData*)data fromPeer:(NSString*)peer inSession:(GKSession*)session context:(void*)context
{
    NSString* s = [ [ NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    
    NSLog(@"%@", s);
    [ s release];
}

- (IBAction)click2:(id)sender
{
    NSData* data = [ _txtField.text dataUsingEncoding:NSUTF8StringEncoding];
    [ gkSession sendDataToAllPeers:data withDataMode:GKSendDataReliable error:nil];
}


- (void)dealloc {
    [_txtField release];
    [super dealloc];
}
@end









