//
//  AppDelegate.m
//  Tabbar
//
//  Created by 1 on 15/6/18.
//  Copyright (c) 2015年 1. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()
@property (strong, nonatomic) UITabBarController * tabBarController;
@property (weak,nonatomic) UIButton *button1;
@property (weak,nonatomic) UIButton *button2;
@property (weak,nonatomic) UIButton *button3;
@property (weak,nonatomic) UIButton *button4;
@property (weak,nonatomic) UIButton *button5;
@property (weak,nonatomic) CAShapeLayer *btn1;
@property (weak,nonatomic) CAShapeLayer *btn2;
@property (weak,nonatomic) CAShapeLayer *btn3;
@property (weak,nonatomic) CAShapeLayer *btn4;
@property (weak,nonatomic) CAShapeLayer *btn5;
@property (weak,nonatomic) UIImageView *whitespace;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    /* 1.Beizierpath 需要 CALayer承载
       2.selectedindex控制tabbarviewcontroller index
       3.全局赋值
                                   */
    
    /*
    //1.Assign tab bar item with titles
     UITabBarController *tabBarController = (UITabBarController *)self.window.rootViewController;
     UITabBar *tabBar = tabBarController.tabBar;
    
    
    
    
    UITabBarItem *tabBarItem1 = [tabBar.items objectAtIndex:0];
    UITabBarItem *tabBarItem2 = [tabBar.items objectAtIndex:1];
    UITabBarItem *tabBarItem3 = [tabBar.items objectAtIndex:2];
    UITabBarItem *tabBarItem4 = [tabBar.items objectAtIndex:3];
    UITabBarItem *tabBarItem5 = [tabBar.items objectAtIndex:4];
    
    tabBarItem1.title = @"Downloads";
    tabBarItem2.title = @"Star";
    tabBarItem3.title = @"Store";
    tabBarItem4.title = @"Status";
    tabBarItem5.title = @"Setting";
    
    /*2. Switch icon state
     "Answer to "deprecated in iOS7" 
     [tabBarItem2 setFinishedSelectedImage:[UIImage imageNamed:@"IS2.png"] withFinishedUnselectedImage:[UIImage imageNamed:@"I2.png"]]; */
    
    /*3. Change the tab bar background
     UIImage* tabBarBackground = [UIImage imageNamed:@"tabbar.png"];
     [[UITabBar appearance] setBackgroundImage:tabBarBackground];
     [[UITabBar appearance] setSelectionIndicatorImage:[UIImage imageNamed:@"tabbar_selected.png"]];*/
    
    /*
    [tabBarItem1 setImage:[[UIImage imageNamed:@"I1"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    [tabBarItem1 setSelectedImage:[[UIImage imageNamed:@"IS1"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    [tabBarItem1 setTitleTextAttributes:@{NSFontAttributeName : [UIFont fontWithName:@"Futura-Medium" size:11.0f],
                                          NSForegroundColorAttributeName : [UIColor colorWithRed:146.0/255.0 green:146.0/255.0 blue:146.0/255.0 alpha:1]
                                          } forState:UIControlStateNormal];
    
    [tabBarItem1 setTitleTextAttributes:@{NSFontAttributeName : [UIFont fontWithName:@"Futura-Medium" size:11.0f],
                                          NSForegroundColorAttributeName : [UIColor colorWithRed:131.0/255.0 green:206.0/255.0 blue:255.0/255.0 alpha:1]
                                          } forState:UIControlStateSelected];
   
    
    
    [tabBarItem2 setImage:[[UIImage imageNamed:@"I2"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    [tabBarItem2 setSelectedImage:[[UIImage imageNamed:@"IS2"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    [tabBarItem2 setTitleTextAttributes:@{NSFontAttributeName : [UIFont fontWithName:@"Futura-Medium" size:11.0f],
                                          NSForegroundColorAttributeName : [UIColor colorWithRed:146.0/255.0 green:146.0/255.0 blue:146.0/255.0 alpha:1]
                                          } forState:UIControlStateNormal];
    
    
    [tabBarItem2 setTitleTextAttributes:@{NSFontAttributeName : [UIFont fontWithName:@"Futura-Medium" size:11.0f],
                                          NSForegroundColorAttributeName : [UIColor colorWithRed:255.0/255.0 green:225.0/255.0 blue:128.0/255.0 alpha:1]
                                          } forState:UIControlStateSelected];

    
    
    [tabBarItem3 setImage:[[UIImage imageNamed:@"I3"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    [tabBarItem3 setSelectedImage:[[UIImage imageNamed:@"IS3"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    [tabBarItem3 setTitleTextAttributes:@{NSFontAttributeName : [UIFont fontWithName:@"Futura-Medium" size:11.0f],
                                          NSForegroundColorAttributeName : [UIColor colorWithRed:146.0/255.0 green:146.0/255.0 blue:146.0/255.0 alpha:1]
                                          } forState:UIControlStateNormal];
    
    [tabBarItem3 setTitleTextAttributes:@{NSFontAttributeName : [UIFont fontWithName:@"Futura-Medium" size:11.0f],
                                          NSForegroundColorAttributeName : [UIColor colorWithRed:255.0/255.0 green:141.0/255.0 blue:131.0/255.0 alpha:1]
                                          } forState:UIControlStateSelected];
    
    
    [tabBarItem4 setImage:[[UIImage imageNamed:@"I4"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    [tabBarItem4 setSelectedImage:[[UIImage imageNamed:@"IS4"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    [tabBarItem4 setTitleTextAttributes:@{NSFontAttributeName : [UIFont fontWithName:@"Futura-Medium" size:11.0f],
                                          NSForegroundColorAttributeName : [UIColor colorWithRed:146.0/255.0 green:146.0/255.0 blue:146.0/255.0 alpha:1]
                                          } forState:UIControlStateNormal];
    
    [tabBarItem4 setTitleTextAttributes:@{NSFontAttributeName : [UIFont fontWithName:@"Futura-Medium" size:11.0f],
                                          NSForegroundColorAttributeName : [UIColor colorWithRed:128.0/255.0 green:255.0/255.0 blue:226.0/255.0 alpha:1]
                                          } forState:UIControlStateSelected];
    
    
    [tabBarItem5 setImage:[[UIImage imageNamed:@"I5"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    [tabBarItem5 setSelectedImage:[[UIImage imageNamed:@"IS5"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    [tabBarItem5 setTitleTextAttributes:@{NSFontAttributeName : [UIFont fontWithName:@"Futura-Medium" size:11.0f],
                                          NSForegroundColorAttributeName : [UIColor colorWithRed:146.0/255.0 green:146.0/255.0 blue:146.0/255.0 alpha:1]
                                          } forState:UIControlStateNormal];
    
    [tabBarItem5 setTitleTextAttributes:@{NSFontAttributeName : [UIFont fontWithName:@"Futura-Medium" size:11.0f],
                                          NSForegroundColorAttributeName : [UIColor colorWithRed:255.0/255.0 green:183.0/255.0 blue:127.0/255.0 alpha:1]
                                          } forState:UIControlStateSelected];
    

    [[UITabBar appearance] setSelectionIndicatorImage:[UIImage imageNamed:@"SelectedBG"]];*/
    
   
    // Override point for customization after application launch.
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
