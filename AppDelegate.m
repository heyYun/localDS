//
//  AppDelegate.m
//  LocalDS
//
//  Created by mac on 15/8/9.
//  Copyright (c) 2015年 Peng. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "DSGuideViewController.h"
#import "DSHomeViewController.h"
#import "DSTabBarController.h"
#import "DSToolsViewController.h"
#import "DSNewsViewController.h"
#import "DSCircleViewController.h"
#import "DSShakeViewController.h"
#import "DSAboutViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [self.window makeKeyAndVisible];
    
    UIStoryboard *story = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    //改变根视图控制器 为 TabBarContoller
    DSTabBarController *tabBar = [[DSTabBarController alloc] init];
    
    //home界面
    DSHomeViewController *home = [story instantiateViewControllerWithIdentifier:@"DSHomeViewController"];
    UINavigationController *homeNav = [[UINavigationController alloc] initWithRootViewController:home];
    
    //新闻视图
    DSNewsViewController *news = [story instantiateViewControllerWithIdentifier:@"DSNewsViewController"];
    
    UINavigationController *newsNav = [[UINavigationController alloc]initWithRootViewController:news];
    
    //圈子视图
    DSCircleViewController *circle = [story instantiateViewControllerWithIdentifier:@"DSCircleViewController"];
    
    UINavigationController *circleNav = [[UINavigationController alloc]initWithRootViewController:circle];
    //工具视图
    DSToolsViewController *tools = [story instantiateViewControllerWithIdentifier:@"DSToolsViewController"];
    
    UINavigationController *toolNav = [[UINavigationController alloc]initWithRootViewController:tools];
    
    //摇一摇页面
    DSShakeViewController *shake = [story instantiateViewControllerWithIdentifier:@"DSShakeViewController"];
    
    UINavigationController *shakeNav = [[UINavigationController alloc]initWithRootViewController:shake];
    
    //
    DSAboutViewController *about = [story instantiateViewControllerWithIdentifier:@"DSAboutViewController"];
    
    UINavigationController *aboutNav = [[UINavigationController alloc]initWithRootViewController:about];
    
    tabBar.viewControllers = @[homeNav,newsNav,circleNav,toolNav,shakeNav,aboutNav];
    
    self.window.rootViewController = tabBar;
    
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
