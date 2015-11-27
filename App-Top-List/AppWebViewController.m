//
//  AppWebViewController.m
//  App-Top-List
//
//  Created by johann casique on 24/11/15.
//  Copyright © 2015 johann casique. All rights reserved.
//

#import "AppWebViewController.h"

@interface AppWebViewController ()

@end

@implementation AppWebViewController


-(id)initWithModel: (AppModel*) aModel{
    
    if (self = [super initWithNibName:nil
                               bundle:nil]) {
        _model = aModel;
    }
    
    return  self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [self displayURL:self.model.appCompanyWeb];

    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)webViewDidStartLoad:(UIWebView *)webView{
    
    NSLog(@"start load web page");
}

-(void)webViewDidFinishLoad:(UIWebView *)webView{
    
    NSLog(@"did finish load");
    
}



-(void)displayURL: (NSURL*)url{
    
    self.appWebView.delegate = self;
    
    
    [self.activityIndicator startAnimating];
    
    
    
   
    
    [self.appWebView loadRequest:[NSURLRequest requestWithURL:url]];
    
}


-(void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error{
  
    NSLog(@"%@", error);
 
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
