//
//  MyTableViewCell.h
//  TableTest2
//
//  Created by ioacademy on 13. 3. 2..
//  Copyright (c) 2013년 ioacademy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyTableViewCell : UITableViewCell

@property(nonatomic, retain) IBOutlet UIImageView* picture;
@property(nonatomic, retain) IBOutlet UILabel* name;
@property(nonatomic, retain) IBOutlet UILabel* phone;

@end
