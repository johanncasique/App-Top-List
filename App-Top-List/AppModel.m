//
//  AppModel.m
//  App-Top-List
//
//  Created by johann casique on 23/11/15.
//  Copyright © 2015 johann casique. All rights reserved.
//

#import "AppModel.h"

@implementation AppModel

+(id)appModelWithName: (NSString *) anImName
              summary: (NSString *) aSummary
              imImage: (UIImage*) anImImage
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
             imImage: (UIImage*) anImImage
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
    
    return [self initWithImName:[aDict objectForKey:@"im:name"]
                        summary:[aDict objectForKey:@"summary"]
                        imImage:nil
                  appCompanyWeb:nil
                         rights:nil
                       category:nil
                        company:nil
                    releaseDate:nil];
}



                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                 
                                 

@end
