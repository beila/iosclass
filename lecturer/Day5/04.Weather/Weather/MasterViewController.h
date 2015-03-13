//
//  MasterViewController.h
//  Weather
//
//  Created by chansigi on 3/4/15.
//  Copyright (c) 2015 IOACADEMY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MasterViewController : UITableViewController<NSXMLParserDelegate>
{
    NSMutableArray* array;           // 모든 지역정보 저장
    NSMutableDictionary* dic;        // 한개의 지역정보 저장
    int valid;
    int index;
}
@end

