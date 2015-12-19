//
//  AppGrossing.h
//  App-Top-List
//
//  Created by johann casique on 15/12/15.
//  Copyright © 2015 johann casique. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppModel.h"

@interface AppGrossing : NSObject

@property (strong, nonatomic) NSMutableArray *appArray;
@property (readonly, nonatomic) NSUInteger appCounts;



-(AppModel *)appCountAtIndex: (NSUInteger)index;






@end
