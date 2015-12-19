//
//  GlobalAppViewController.m
//  App-Top-List
//
//  Created by johann casique on 11/12/15.
//  Copyright © 2015 johann casique. All rights reserved.
//

#import "GlobalAppViewController.h"
#import "AppSpainStore.h"
#import "AppViewController.h"
#import "AppListTableViewController.h"
#import "USStoreTableViewController.h"

@interface GlobalAppViewController ()

@end

@implementation GlobalAppViewController

-(id)initWithModel: (AppSpainStore*) aModel{
    
    if (self = [super init]) {
        _model = aModel;
    }
    
    return self;
    
}

-(id)initWithUSModel: (AppUSStore*) anUSModel{
    
    if (self = [super init]) {
        _USModel = anUSModel;
    }
    
    return self;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)SpainStore:(id)sender {
  
    
    AppListTableViewController *spainTableVC = [[AppListTableViewController alloc] initWithModel:self.model
                                                                                           Style:UITableViewStylePlain];

    
    [self.navigationController pushViewController:spainTableVC
                                         animated:YES];
    
    
}

- (IBAction)USStore:(id)sender {
    
    
    USStoreTableViewController *USStoreVC = [[USStoreTableViewController alloc] initWithModel:self.USModel
                                                                                        Style:UITableViewStylePlain];
    
    [self.navigationController pushViewController:USStoreVC
                                         animated:YES];
    
    
}
@end
