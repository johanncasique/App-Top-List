//
//  AppGroupModel.m
//  App-Top-List
//
//  Created by johann casique on 23/11/15.
//  Copyright © 2015 johann casique. All rights reserved.
//

#import "AppGroupModel.h"
#import "AppModel.h"
#import <AFNetworking.h>



@implementation AppGroupModel


@synthesize appArrays = _appArrays;

-(NSUInteger)appCounts{
    
    
    return [self.appArrays count];
    
}



-(id)init{
    
    
    if (self = [super init]) {
        
        
        
        NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"https://itunes.apple.com/us/rss/topfreeapplications/limit=20/json"]];
        
        NSURLResponse *response = [[NSURLResponse alloc] init];
        
        NSError *error;
        
        NSData *data = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&error];
        
        if (data != nil) {
            
            NSDictionary *JSONObjects = [NSJSONSerialization JSONObjectWithData:data
                                                                   options:kNilOptions
                                                                     error:&error];
            
            
            
            
         if (JSONObjects != nil) {
                
             NSDictionary *feed = [JSONObjects objectForKey:@"feed"];
             
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

//        
  }
      return self;
    
}

        
        
        
//        NSString *string = [NSString stringWithFormat:@"https://itunes.apple.com/us/rss/topfreeapplications/limit=20/json"];
//        
//        NSURL *url = [NSURL URLWithString:string];
//        
//        NSURLRequest *request = [NSURLRequest requestWithURL:url];
//        
//        AFHTTPRequestOperation *operation = [[AFHTTPRequestOperation alloc] initWithRequest:request];
//        operation.responseSerializer = [AFJSONResponseSerializer serializer];
//        
//        [operation setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject) {
//            
//            // 3
//            
//            
//            NSDictionary *dic = [responseObject objectForKey:@"feed"];
//          
//            NSArray *entry = [dic objectForKey:@"entry"];
//            
//      
//            
//          
//                
//                for (NSDictionary *dic in entry) {
//                    
//                    
//                   AppModel *model = [[AppModel alloc] initWithDictionary:dic];
//                   
//
//                    if (!self.appArrays) {
//                        self.appArrays = [NSMutableArray arrayWithObject:model];
//                    }else{
//                        
//                        
//                        [self.appArrays addObject:model];
//                        
//                       
//                    }
//                 
//                    
//                    
//                    
//                    
//                    
//                    
//                        }
//            
//          
//            
//        } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
//            
//            // 4
//            UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Error Retrieving Weather"
//                                                                message:[error localizedDescription]
//                                                               delegate:nil
//                                                      cancelButtonTitle:@"Ok"
//                                                      otherButtonTitles:nil];
//            [alertView show];
//        }];
//        
//        // 5
//        [operation start];
//    }
    





-(AppModel *)appCounAtIndex: (NSUInteger) index{
        
        
    return [self.appArrays objectAtIndex:index];
    
    }









@end
