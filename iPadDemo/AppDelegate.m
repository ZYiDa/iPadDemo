//
//  AppDelegate.m
//  iPadDemo
//
//  Created by YYKit on 2017/9/8.
//  Copyright © 2017年 zl. All rights reserved.
//

#import "AppDelegate.h"
#import "MasterViewController.h"
#import "DetailsViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#define Width [UIScreen mainScreen].bounds.size.width
@interface AppDelegate ()
@property (nonatomic,strong) UINavigationController *navigationControllerDetails;
@property (nonatomic,strong) UINavigationController *navigationControllerFirst;
@property (nonatomic,strong) UINavigationController *navigationControllerSecond;
@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    [self setupSpliteViewController];
    return YES;
}

#pragma mark 设置SpliteViewController
- (void)setupSpliteViewController
{
    MasterViewController *master = [MasterViewController new];
    
    DetailsViewController *details = [DetailsViewController new];//刚进入应用默认显示的Controller
    self.navigationControllerDetails = [[UINavigationController alloc]initWithRootViewController:details];

    FirstViewController *first = [FirstViewController new];
    self.navigationControllerFirst = [[UINavigationController alloc]initWithRootViewController:first];

    SecondViewController *second = [SecondViewController new];
    self.navigationControllerSecond = [[UINavigationController alloc]initWithRootViewController:second];

    self.spliteViewController = [[UISplitViewController alloc]init];
    self.spliteViewController.viewControllers = @[master,self.navigationControllerDetails,self.navigationControllerFirst,self.navigationControllerSecond];

    self.spliteViewController.preferredDisplayMode = UISplitViewControllerDisplayModeAllVisible;//设置左侧主视图Master Controller的显示模式，现在是一直显示
    self.spliteViewController.maximumPrimaryColumnWidth = 128.0f;//调整左侧主视图Master Controller的最大显示宽度
    self.window.rootViewController = self.spliteViewController;
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
