//
//  TableViewCell.h
//  StoryBoard
//
//  Created by Eizer-N39 on 2015. 3. 13..
//  Copyright (c) 2015년 beila. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *cityLabel;
@property (weak, nonatomic) IBOutlet UILabel *degreeLabel;
@property (weak, nonatomic) IBOutlet UILabel *weatherLabel;

@end
