//
//  AppViewController.m
//  App-Top-List
//
//  Created by johann casique on 23/11/15.
//  Copyright © 2015 johann casique. All rights reserved.
//

#import "AppViewController.h"
#import "AppWebViewController.h"
#import <AFNetworking.h>

@interface AppViewController ()


@property (strong, nonatomic) NSMutableArray *arrayM;

@end


@implementation AppViewController


-(id)initWithModel: (AppModel*) aModel{
    
    if (self = [super initWithNibName:nil
                               bundle:nil]) {
        _model = aModel;
    }
    self.title = self.model.imName;
    
    return self;
}


-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
    
    [self syncModelWithView];
    
    
    
 
  
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    self.scrollView.contentSize = self.subView.frame.size;
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




-(void)syncModelWithView{
    
    self.name.text = self.model.imName;
    self.summary.text = self.model.summary;
    self.rights.text = self.model.rights;
    self.companyName.text = self.model.company;
    self.iconImage.image = self.model.photo;
    self.releaseDate.text = self.model.releaseDate;
    self.category.text = self.model.category;
    
  
    
    [self.summary setNumberOfLines:0];
    


    
}

- (IBAction)appWeb:(id)sender {
    
    
    AppWebViewController *webView = [[AppWebViewController alloc] initWithModel:self.model];
    
    [self.navigationController pushViewController:webView
                                         animated:YES];
    
    
    
    
}
@end
