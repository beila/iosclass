//
//  ViewController.h
//  BlueTooth
//
//  Created by ioacademy on 13. 3. 23..
//  Copyright (c) 2013년 ioacademy. All rights reserved.
//

#import <UIKit/UIKit.h>

// 블루투스를 사용하려면 GameKit.framework가 필요 합니다.
#import <GameKit/GameKit.h>  // Gamekit.framework 추가 하세요


@interface ViewController : UIViewController<GKPeerPickerControllerDelegate, GKSessionDelegate>
{
    GKSession* gkSession;
    GKPeerPickerController* pickerController;
}

- (IBAction)click1:(id)sender;
- (IBAction)click2:(id)sender;
@property (retain, nonatomic) IBOutlet UITextField *txtField;

@end
