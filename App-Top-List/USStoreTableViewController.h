//
//  USStoreTableViewController.h
//  App-Top-List
//
//  Created by johann casique on 11/12/15.
//  Copyright © 2015 johann casique. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppUSStore.h"
#import "AppSpainStore.h"

@interface USStoreTableViewController : UITableViewController



@property (strong, nonatomic) AppUSStore *USModel;

@property (strong, nonatomic) AppSpainStore *paidSpainModel;




-(id)initWithModel: (AppUSStore*) anUSModel
             Style: (UITableViewStyle) aStyle;

@end
