//
//  AppGroupModel.m
//  App-Top-List
//
//  Created by johann casique on 23/11/15.
//  Copyright © 2015 johann casique. All rights reserved.
//

#import "AppSpainStore.h"
#import "AppModel.h"
#import <AFNetworking.h>



@implementation AppSpainStore


@synthesize appArrays = _appArrays;



-(NSUInteger)appCounts{
    
    
    return [self.appArrays count];
    
}



-(id)init{
    
    
    if (self = [super init]) {
        
        
        
        NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"https://itunes.apple.com/es/rss/topfreeapplications/limit=25/json"]];
        
        NSURLResponse *response = [[NSURLResponse alloc] init];
        
        NSError *error;
        
        
        NSData *data = [NSURLConnection sendSynchronousRequest:request returningResponse: &response error: &error];
        
       
        
        if (data != nil) {
            
            NSDictionary *freeAppsJSON = [NSJSONSerialization JSONObjectWithData:data
                                                                         options: kNilOptions
                                                                           error: &error];
            
            
            
         if (freeAppsJSON != nil) {
                
             NSDictionary *feed = [freeAppsJSON objectForKey:@"feed"];
             
             NSArray *entry = [feed objectForKey:@"entry"];
                
                
                for (NSDictionary *dic in entry) {
          
                    
             
                  AppModel *model = [[AppModel alloc] initWithDictionary:dic];
                    
                    if (!self.appArrays) {
                        self.appArrays = [NSMutableArray arrayWithObject:model];
                    }else{
                        [self.appArrays addObject:model];
                    }
             
                }
                
                    }
      }
        
        
        
        
        
        

        
        
        
        


  }
      return self;
    
}



        






-(AppModel *)appCounAtIndex: (NSUInteger) index{
        
    
    return [self.appArrays objectAtIndex:index];
    
    }









@end
