//
//  AppViewController.h
//  App-Top-List
//
//  Created by johann casique on 23/11/15.
//  Copyright © 2015 johann casique. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppModel.h"

@interface AppViewController : UIViewController


@property (weak, nonatomic) IBOutlet UIView *subView;
@property (weak, nonatomic) IBOutlet UILabel *category;
@property (weak, nonatomic) IBOutlet UILabel *releaseDate;
@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *summary;
@property (weak, nonatomic) IBOutlet UILabel *rights;
@property (weak, nonatomic) IBOutlet UILabel *companyName;
@property (weak, nonatomic) IBOutlet UIImageView *iconImage;

@property (weak, nonatomic) IBOutlet UIButton *getApp;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
- (IBAction)appWeb:(id)sender;

@property (strong, nonatomic) AppModel *model;

-(id)initWithModel: (AppModel*) aModel;

@end
