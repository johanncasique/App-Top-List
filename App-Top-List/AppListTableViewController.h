//
//  AppListTableViewController.h
//  App-Top-List
//
//  Created by johann casique on 23/11/15.
//  Copyright © 2015 johann casique. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppSpainStore.h"

@interface AppListTableViewController : UITableViewController


@property (strong, nonatomic) AppSpainStore *model;

-(id)initWithModel: (AppSpainStore*) aModel
             Style: (UITableViewStyle) aStyle;

@end
