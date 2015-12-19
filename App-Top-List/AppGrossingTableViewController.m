//
//  AppGrossingTableViewController.m
//  App-Top-List
//
//  Created by johann casique on 15/12/15.
//  Copyright © 2015 johann casique. All rights reserved.
//

#import "AppGrossingTableViewController.h"
#import "AppGrossing.h"
#import "AppListTableViewCell.h"
#import "AppModel.h"
#import "AppViewController.h"

@interface AppGrossingTableViewController ()

@end

@implementation AppGrossingTableViewController


-(id)initWithModel: (AppGrossing *) aModel
             Style: (UITableViewStyle) aStyle{
    
    
    if (self = [super initWithStyle:aStyle]) {
        
        _model = aModel;
        self.title = @"Top Grossing App";
    }
    
    
    return self;
}





- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    
    
    
    
    
    
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

   
    NSUInteger count = 0;
    
    count = self.model.appCounts;
    
    return count;
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
   
    static NSString *cellIdentifier = @"AppGrossingTable";
    
    AppModel *cellModel = nil;
    
    cellModel = [self.model appCountAtIndex:indexPath.row];
    
    
    AppListTableViewCell *viewCell = (AppListTableViewCell *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (viewCell == nil) {
        
        
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"AppListCell" owner:self options: nil];
        viewCell = [nib objectAtIndex:0];
        
        
    }
    
    // Configure the cell...
    
    
    viewCell.nameCell.text = cellModel.imName;
    viewCell.imageCell.image = cellModel.photo;
    viewCell.companyName.text = cellModel.company;
    [viewCell.imageCell.layer setCornerRadius:15];
    [viewCell.imageCell.layer setMasksToBounds:YES];
    viewCell.contentView.backgroundColor =  [UIColor colorWithRed:71/255.0
                                                           green:69/255.0
                                                            blue:69/255.0
                                                           alpha:0.89];
    
    
    
    return viewCell;
}


-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 80;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    AppModel *model = nil;
    
    model = [self.model appCountAtIndex:indexPath.row];
    
    
    AppViewController *grossingVC = [[AppViewController alloc] initWithModel:model];
    
    [self.navigationController pushViewController:grossingVC
                                         animated:YES];
    
    
    
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
