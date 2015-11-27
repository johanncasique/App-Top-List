//
//  AppModel.h
//  App-Top-List
//
//  Created by johann casique on 23/11/15.
//  Copyright © 2015 johann casique. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface AppModel : NSObject

@property (copy, nonatomic) NSString *imName;
@property (strong, nonatomic) UIImage *imImage;
@property (strong, nonatomic) NSString *summary;
@property (strong, nonatomic) NSURL *appCompanyWeb;
@property (strong, nonatomic) NSString *rights;
@property (strong, nonatomic) NSString *category;
@property (strong, nonatomic) NSString *company;
@property (strong, nonatomic) NSString *releaseDate;



+(id)appModelWithName: (NSString *) anImName
              summary: (NSString *) aSummary
              imImage: (UIImage*) anImImage
                 appCompanyWeb: (NSURL*) anAppCompanyWeb
               rights: (NSString *) aRights
             category: (NSString *) aCategory
              company: (NSString *) aCompany
          releaseDate: (NSString *) aReleaseDate;




-(id) initWithImName: (NSString *) anImName
             summary: (NSString *) aSummary
             imImage: (UIImage*) anImImage
                appCompanyWeb: (NSURL*) anAppCompanyWeb
              rights: (NSString *) aRights
            category: (NSString *) aCategory
             company: (NSString *) aCompany
         releaseDate: (NSString *) aReleaseDate;




-(id)initWithDictionary: (NSDictionary*) aDict;

@end
