//
//  AppListTableViewController.m
//  App-Top-List
//
//  Created by johann casique on 23/11/15.
//  Copyright © 2015 johann casique. All rights reserved.
//

#import "AppListTableViewController.h"
#import "AppViewController.h"
#import "AppModel.h"
#import "AppSpainStore.h"
#import "AppListTableViewCell.h"
#import <AFNetworking.h>

@interface AppListTableViewController ()

@property (strong, nonatomic) NSDictionary *tableDic;
@property (strong, nonatomic) NSMutableArray *array;

@end

@implementation AppListTableViewController

-(id)initWithModel: (AppSpainStore*) aModel
             Style: (UITableViewStyle) aStyle{
    if (self = [super initWithStyle:aStyle]) {
        aModel = aModel;
        self.title = @"Free Top Apps";
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
//    [[self tableView]setDelegate:self];
//    [[self tableView]setDataSource:self];
    
    
    self.tableView.tableHeaderView.backgroundColor = [UIColor whiteColor];

    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete implementation, return the number of rows
    
    NSUInteger count = 0;
    
    count = self.model.appCounts;

    return count;
    
}




- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellIdentifier = @"AppListCell";
    
    
 
    
    AppListTableViewCell *appCell = (AppListTableViewCell *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (appCell == nil) {

        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"AppListCell" owner:self options:nil];
        appCell = [nib objectAtIndex:0];
    }
    
    // Configure the cell...
    
    AppModel *modelApp = nil;
    
    
    modelApp = [self.model appCounAtIndex:indexPath.row];
    

    
    appCell.nameCell.text = modelApp.imName;
    appCell.imageCell.image = modelApp.photo;
    appCell.companyName.text = modelApp.company;
    [appCell.imageCell.layer setCornerRadius:15];
    [appCell.imageCell.layer setMasksToBounds:YES];
    appCell.contentView.backgroundColor =  [UIColor colorWithRed:71/255.0
                                                           green:69/255.0
                                                            blue:69/255.0
                                                           alpha:0.89];

    
    return appCell;

}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 80;
}





-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    AppModel *model = [[AppModel alloc] init];
    
    model = [self.model appCounAtIndex:indexPath.row];
    
    AppViewController *viewApp = [[AppViewController alloc] initWithModel:model];
    
    [self.navigationController pushViewController:viewApp animated:YES];
    
    
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
