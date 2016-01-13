//
//  AppDelegate.m
//  ThreeDTouch
//
//  Created by 陈磊 on 15/12/2.
//  Copyright © 2015年 ShenSu. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    UIApplicationShortcutIcon *firstItemIcon = [UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeAdd];
    UIMutableApplicationShortcutItem *firstItem = [[UIMutableApplicationShortcutItem alloc] initWithType:@"add" localizedTitle:@"设置" localizedSubtitle:nil icon:firstItemIcon userInfo:nil];
    UIApplicationShortcutIcon *secondItemIcon = [UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeShare];
    UIMutableApplicationShortcutItem *secondItem = [[UIMutableApplicationShortcutItem alloc] initWithType:@"share" localizedTitle:@"分享" localizedSubtitle:nil icon:secondItemIcon userInfo:nil];
    
    application.shortcutItems = @[firstItem, secondItem];
    
    return YES;
}

- (void)application:(UIApplication *)application performActionForShortcutItem:(UIApplicationShortcutItem *)shortcutItem completionHandler:(void (^)(BOOL))completionHandler
{
    if ([shortcutItem.type isEqual:@"add"]) {
        NSLog(@"执行添加事件");
        //跳转到设置页面
        //@"prefs:root=General&path=About"
        NSURL *url = [NSURL URLWithString:@"prefs:root"];
        if ([[UIApplication sharedApplication] canOpenURL:url])
        {
            [[UIApplication sharedApplication] openURL:url];
        }
    }else if([shortcutItem.type isEqual:@"share"]){
        NSLog(@"执行分享事件");
    }
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
