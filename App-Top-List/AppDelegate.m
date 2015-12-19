//
//  AppDelegate.m
//  App-Top-List
//
//  Created by johann casique on 23/11/15.
//  Copyright © 2015 johann casique. All rights reserved.
//

#import "AppDelegate.h"
#import "AppModel.h"
#import "AppViewController.h"
#import "AppSpainStore.h"
#import "AppListTableViewController.h"
#import "GlobalAppViewController.h"
#import "AppUSStore.h"
#import "USStoreTableViewController.h"
#import "AppGrossing.h"
#import "AppGrossingTableViewController.h"


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
   AppSpainStore *spainStore = [[AppSpainStore alloc] init];
    AppUSStore *usStore = [[AppUSStore alloc] init];
    AppGrossing *appGrossingStore = [[AppGrossing alloc] init];
   
    
    
  AppListTableViewController *tableVC = [[AppListTableViewController alloc ] initWithModel:spainStore
                                                                                     Style:UITableViewStylePlain];
    
    AppGrossingTableViewController *tableVC2 = [[AppGrossingTableViewController alloc] initWithModel:appGrossingStore
                                                                                               Style: UITableViewStylePlain];
    
    
//    GlobalAppViewController *globalVC = [[GlobalAppViewController alloc] initWithModel:spainStore];
    
    USStoreTableViewController *usStoreVC =[[USStoreTableViewController alloc] initWithModel:usStore
                                                                                        Style:UITableViewStylePlain];

    UINavigationController *tabVC = [[UINavigationController alloc] initWithRootViewController:tableVC];
    UINavigationController *tabVC2 = [[UINavigationController alloc] initWithRootViewController:usStoreVC];
    UINavigationController *navVC3 = [[UINavigationController alloc] initWithRootViewController:tableVC2];
    
    UITabBarController *tabBC = [[UITabBarController alloc] init];
    tabBC.viewControllers = @[tabVC, tabVC2, navVC3];
    
    
    self.window.rootViewController = tabBC;
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
