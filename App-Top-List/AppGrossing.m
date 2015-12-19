//
//  AppGrossing.m
//  App-Top-List
//
//  Created by johann casique on 15/12/15.
//  Copyright © 2015 johann casique. All rights reserved.
//

#import "AppGrossing.h"

@implementation AppGrossing


-(NSUInteger) appCounts{
    
    return [self.appArray count];
    
}


-(id)init{
    
    if (self = [super init]) {
        
        
        
        NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"https://itunes.apple.com/es/rss/topgrossingapplications/limit=25/json"]];
        
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
                    
                    if (!self.appArray) {
                        self.appArray = [NSMutableArray arrayWithObject:model];
                    }else{
                        [self.appArray addObject:model];
                    }
                    
                }
                
            }
        }
        
        
        
        
        
        
        
    }
    
    
    return self;
    
    
    
    
    
    
}







-(AppModel *)appCountAtIndex: (NSUInteger)index{

    
    return [self.appArray objectAtIndex:index];
    
}



@end
