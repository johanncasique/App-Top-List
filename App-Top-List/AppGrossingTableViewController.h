//
//  AppGrossingTableViewController.h
//  App-Top-List
//
//  Created by johann casique on 15/12/15.
//  Copyright © 2015 johann casique. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppGrossing.h"

@interface AppGrossingTableViewController : UITableViewController

@property (strong, nonatomic) AppGrossing *model;



-(id)initWithModel: (AppGrossing *) aModel
             Style: (UITableViewStyle) aStyle;



@end
