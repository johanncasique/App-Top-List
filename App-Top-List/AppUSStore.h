//
//  AppUSStore.h
//  App-Top-List
//
//  Created by johann casique on 11/12/15.
//  Copyright © 2015 johann casique. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppModel.h"

@interface AppUSStore : NSObject

@property (readonly, nonatomic) NSUInteger appCounts;
@property (strong, nonatomic) NSMutableArray *appArrays;



-(AppModel *)appCounAtIndex: (NSUInteger) index;

@property (strong, nonatomic) NSString *feed;


@end
