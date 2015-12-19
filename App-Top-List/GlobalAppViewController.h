//
//  GlobalAppViewController.h
//  App-Top-List
//
//  Created by johann casique on 11/12/15.
//  Copyright © 2015 johann casique. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppSpainStore.h"
#import "AppModel.h"
#import "AppUSStore.h"

@interface GlobalAppViewController : UIViewController

@property (strong, nonatomic) AppSpainStore *model;
@property (strong, nonatomic) AppUSStore *USModel;






-(id)initWithModel: (AppSpainStore*) aModel;

-(id)initWithUSModel: (AppUSStore*) anUSModel;



- (IBAction)SpainStore:(id)sender;

- (IBAction)USStore:(id)sender;



@end
