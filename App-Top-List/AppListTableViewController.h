//
//  AppListTableViewController.h
//  App-Top-List
//
//  Created by johann casique on 23/11/15.
//  Copyright © 2015 johann casique. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppGroupModel.h"

@interface AppListTableViewController : UITableViewController


@property (strong, nonatomic) AppGroupModel *model;

-(id)initWithModel: (AppGroupModel*) aModel
             Style: (UITableViewStyle) aStyle;

@end
