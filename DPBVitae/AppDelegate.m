//
//  AppDelegate.m
//  DPBVitae
//
//  Created by David Pedrosa on 26/06/14.
//  Copyright (c) 2014 David Pedrosa Bataller. All rights reserved.
//

#import "AppDelegate.h"
#import "APIManager.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.

    [self customizeTabbar];
        
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


- (void)showFonts {
    for (NSString* family in [UIFont familyNames])
    {
        NSLog(@"%@", family);
        
        for (NSString* name in [UIFont fontNamesForFamilyName: family])
        {
            NSLog(@"  %@", name);
        }
    }
}

- (void)customizeTabbar {
    // Create TabBarController and her tabBarItems
    UITabBarController *tabBarController = (UITabBarController *)self.window.rootViewController;
    
    UITabBar *tabBar = tabBarController.tabBar;
    UITabBarItem *tabBarItem1 = [tabBar.items objectAtIndex:0];
    UITabBarItem *tabBarItem2 = [tabBar.items objectAtIndex:1];
    
    
    // Currículum Vitae Tab
    UIImage *vitaeImage = [UIImage imageNamed:@"tab-vitae-unselected"];
    UIImage *vitaeImageSel = [UIImage imageNamed:@"tab-vitae-selected"];
    
    vitaeImage = [vitaeImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    vitaeImageSel = [vitaeImageSel imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    tabBarItem1.title = @"a Vitae";
    tabBarItem1.image = vitaeImage;
    tabBarItem1.selectedImage = vitaeImageSel;
    [tabBarItem1 setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
                                         [UIFont fontWithName:@"Montserrat-Regular" size:10.0f], NSFontAttributeName,
                                         [DPBUtils colorWithHexString:@"34495e" alpha:1.0], NSForegroundColorAttributeName,nil]
                               forState:UIControlStateSelected];
    
    
    
    
    // Currículum Vitae Tab
    UIImage *portFolioImage = [UIImage imageNamed:@"tab-portfolio-unselected"];
    UIImage *portFolioImageSel = [UIImage imageNamed:@"tab-portfolio-selected"];
    
    portFolioImage = [portFolioImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    portFolioImageSel = [portFolioImageSel imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    tabBarItem2.title = @"Portfolio";
    tabBarItem2.image = portFolioImage;
    tabBarItem2.selectedImage = portFolioImageSel;
    [tabBarItem2 setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
                                         [UIFont fontWithName:@"Montserrat-Regular" size:10.0f], NSFontAttributeName,
                                         [DPBUtils colorWithHexString:@"34495e" alpha:1.0], NSForegroundColorAttributeName,nil]
                               forState:UIControlStateSelected];

    
}

@end
