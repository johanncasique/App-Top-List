//
//  AppWebViewController.h
//  App-Top-List
//
//  Created by johann casique on 24/11/15.
//  Copyright © 2015 johann casique. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppModel.h"

@interface AppWebViewController : UIViewController<UIWebViewDelegate>


@property (weak, nonatomic) IBOutlet UIWebView *appWebView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;
@property (strong, nonatomic) AppModel *model;


-(id)initWithModel: (AppModel*) aModel;


@end
