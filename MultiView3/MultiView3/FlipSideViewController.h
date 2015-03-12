//
//  FlipSideViewController.h
//  MultiView3
//
//  Created by Eizer-N39 on 2015. 3. 12..
//  Copyright (c) 2015년 beila. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FlipSideViewController;

@protocol FlipSideViewControllerDelegate <NSObject>

- (void)flipSideViewControllerDidFinish:(FlipSideViewController*)controller;

@end

@interface FlipSideViewController : UIViewController

@property (weak, nonatomic) id<FlipSideViewControllerDelegate> delegate;

@end
