//
//  TableViewCell.m
//  StoryBoard
//
//  Created by Eizer-N39 on 2015. 3. 13..
//  Copyright (c) 2015년 beila. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell

- (void)awakeFromNib {
    NSLog(@"%s", __func__);
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    NSLog(@"%s, %d, %d", __func__, selected, animated);
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
