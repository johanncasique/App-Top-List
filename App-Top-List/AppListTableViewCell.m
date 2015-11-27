//
//  AppListTableViewCell.m
//  App-Top-List
//
//  Created by johann casique on 23/11/15.
//  Copyright © 2015 johann casique. All rights reserved.
//

#import "AppListTableViewCell.h"

@implementation AppListTableViewCell

@synthesize nameCell = _nameCell;
@synthesize imageCell = _imageCell;

- (void)awakeFromNib {
    // Initialization code
}



- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
