//
//  AppViewController.m
//  App-Top-List
//
//  Created by johann casique on 23/11/15.
//  Copyright © 2015 johann casique. All rights reserved.
//

#import "AppViewController.h"
#import "AppWebViewController.h"

@interface AppViewController ()

@end


@implementation AppViewController





-(id)initWithModel: (AppModel*) aModel{
    
    if (self = [super initWithNibName:@"AppViewController"
                               bundle:nil]) {
        _model = aModel;
        self.title = @"iTunes Store: Top Free Apps";
    }
    return self;
}


-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
    
    [self syncModelWithView];
    
    self.scrollView.scrollEnabled = YES;
   
    
    NSLog(@"view appear ");
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
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
    self.iconImage.image = self.model.imImage;
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
