//
//  AppGroupModel.h
//  App-Top-List
//
//  Created by johann casique on 23/11/15.
//  Copyright © 2015 johann casique. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppModel.h"
@interface AppGroupModel : NSObject

@property (readonly, nonatomic) NSUInteger appCounts;
@property (strong, nonatomic) NSMutableArray *appArrays;



-(AppModel *)appCounAtIndex: (NSUInteger) index;

@property (strong, nonatomic) NSString *feed;



@end
