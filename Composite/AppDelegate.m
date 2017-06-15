//
//  AppDelegate.m
//  Composite
//
//  Created by Vasilii on 15.06.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import "AppDelegate.h"
#import "Container.h"
#import "LeafObject.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    Container *rootContainer = [[Container alloc] init];
    LeafObject *object = [[LeafObject alloc] init]; object.leafValue = @"level1 value";
    [rootContainer addComponent:object];
    Container *firstLevelContainer1 = [[Container alloc] init]; LeafObject *object2 = [[LeafObject alloc] init];
    object2.leafValue = @"level2 value"; [firstLevelContainer1 addComponent:object2]; [rootContainer addComponent:firstLevelContainer1];
    Container *firstLevelContainer2 = [[Container alloc] init]; LeafObject *object3 = [[LeafObject alloc] init]; object3.leafValue = @"level2 value 2"; [firstLevelContainer2 addComponent:object3];
    [rootContainer addComponent:firstLevelContainer2]; NSLog(@"%@", rootContainer.getData);
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
