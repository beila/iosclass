//
//  프로토콜.m
//  Obj-C2
//
//  Created by Eizer-N39 on 2015. 3. 10..
//  Copyright (c) 2015년 beila. All rights reserved.
//


#import <Foundation/Foundation.h>

@protocol CLLocationManagerDelegate <NSObject>

@required
- (void)updateLocation;

@optional
- (void)failToUpdate;

@end

@interface CLLocationManager : NSObject

@property(assign) id<CLLocationManagerDelegate> delegate;
// delegate 패턴에서는 assign 혹은 weak으로 해야 다른 곳에서 맘대로 해제한다.

- (void)startUpdateLocation;

@end

@implementation CLLocationManager

- (void)startUpdateLocation{
    [_delegate updateLocation];
//    [_delegate failToUpdate];
}

@end

@interface Car : NSObject<CLLocationManagerDelegate>

@end

@implementation Car

- (void)updateLocation{}

@end

int main() {
    CLLocationManager* clm = [[CLLocationManager alloc] init];
    Car* p = [[Car alloc] init];
    clm.delegate = p;
    [clm startUpdateLocation];
}