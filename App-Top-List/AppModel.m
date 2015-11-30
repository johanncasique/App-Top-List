//
//  AppModel.m
//  App-Top-List
//
//  Created by johann casique on 23/11/15.
//  Copyright © 2015 johann casique. All rights reserved.
//

#import "AppModel.h"
#import <AFNetworking.h>

@implementation AppModel


@synthesize photo = _photo;


-(UIImage *) photo{
    
    if (_photo == nil) {
        _photo = [UIImage imageWithData:[NSData dataWithContentsOfURL:self.imImage]];
    }
    
    return _photo;
    
}





+(id)appModelWithName: (NSString *) anImName
              summary: (NSString *) aSummary
              imImage: (NSURL*) anImImage
        appCompanyWeb: (NSURL*) anAppCompanyWeb
               rights: (NSString *) aRights
             category: (NSString *) aCategory
              company: (NSString *) aCompany
          releaseDate: (NSString *) aReleaseDate{
    
    return [[self alloc] initWithImName:anImName
                                summary:aSummary
                                imImage:anImImage
                          appCompanyWeb:anAppCompanyWeb
                                 rights:aRights
                               category:aCategory
                                company:aCompany
                            releaseDate:aReleaseDate];
    
}




-(id) initWithImName: (NSString *) anImName
             summary: (NSString *) aSummary
             imImage: (NSURL*) anImImage
       appCompanyWeb: (NSURL*) anAppCompanyWeb
              rights: (NSString *) aRights
            category: (NSString *) aCategory
             company: (NSString *) aCompany
         releaseDate: (NSString *) aReleaseDate{
    
    
    if (self = [super init]) {
        _imName = anImName;
        _summary = aSummary;
        _imImage = anImImage;
        _appCompanyWeb = anAppCompanyWeb;
        _rights = aRights;
        _category = aCategory;
        _company = aCompany;
        _releaseDate = aReleaseDate;
    }
    
    
    return self;
    
}

-(id)initWithDictionary: (NSDictionary*) aDict{
    
    return [self initWithImName:[[aDict objectForKey:@"im:name"] objectForKey:@"label"]
                        summary:[[aDict objectForKey:@"summary"] objectForKey:@"label"]
                        imImage: [NSURL URLWithString:[[[aDict objectForKey:@"im:image"] objectAtIndex:1] objectForKey:@"label"] ]
                  appCompanyWeb:[NSURL URLWithString:[[aDict objectForKey:@"id" ] objectForKey:@"label" ]]
                         rights:[[aDict objectForKey:@"rights"] objectForKey:@"label"]
                       category:[[[aDict objectForKey:@"category"] objectForKey:@"attributes"] objectForKey:@"label"]
                        company:[[aDict objectForKey:@"im:artist"] objectForKey:@"label"]
                    releaseDate:[[[aDict objectForKey:@"im:releaseDate"] objectForKey:@"attributes"]  objectForKey:@"label"] ];
}
























                                 
                                 
                                 
                                 
                                 
                                 
                                 

@end
