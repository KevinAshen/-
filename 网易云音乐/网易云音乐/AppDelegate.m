//
//  AppDelegate.m
//  网易云音乐
//
//  Created by 姜凯文 on 2018/7/24.
//  Copyright © 2018年 姜凯文. All rights reserved.
//

#import "AppDelegate.h"
#import "MyMusic.h"
#import "MyAccount.h"
#import "MyFind.h"
#import "MyVideo.h"
#import "MyFriends.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    //创建window
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen] .bounds];
    
    //显示window
    [self.window makeKeyAndVisible];
    
    //创建控制器：我的音乐
    MyMusic* myMusic = [[MyMusic alloc] init];
    //myMusic.view.backgroundColor = [UIColor whiteColor];
    
    //创建控制器：我的账户
    MyAccount* myAccount = [[MyAccount alloc] init];
    //myAccount.view.backgroundColor = [UIColor whiteColor];
    
    //创建控制器：我的发现
    MyFind* myFind = [[MyFind alloc] init];
    myFind.view.backgroundColor = [UIColor whiteColor];
    
    //创建控制器：我的朋友
    MyFriends* myFriends = [[MyFriends alloc] init];
    myFriends.view.backgroundColor = [UIColor whiteColor];
    
    //创建控制器：我的视频
    MyVideo* myVideo = [[MyVideo alloc] init];
    myVideo.view.backgroundColor = [UIColor whiteColor];
    
    //设定分栏文字
    myFind.title = @"发现";
    myVideo.title = @"视频";
    myMusic.title = @"我的";
    myFriends.title = @"朋友";
    myAccount.title = @"账号";
    
    //创建分栏控制器对象
    UITabBarController* tbController = [[UITabBarController alloc] init];
    
    //创建一个控制器数组对象
    //将所有要被分栏控制器管理的对象添加到数组中
    //分栏顺序取决于数组中的顺序
    
    
    myAccount.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"账号" image:[UIImage imageNamed:@"5"] tag:5];
    
    myMusic.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"我的" image:[UIImage imageNamed:@"3"] tag:3];
    
    UINavigationController * nav1 = [[UINavigationController alloc]initWithRootViewController:myMusic];
    
//    [tbController addChildViewController:nav1];
    
    UINavigationController * nav = [[UINavigationController alloc]initWithRootViewController:myAccount];
    
//    [tbController addChildViewController:nav];
    
    //设置分栏控制器的工具栏的透明度
    tbController.tabBar.translucent = NO;
    
    tbController.tabBar.backgroundColor = [UIColor greenColor];
    
    [[UITabBarItem
      appearance]setTitleTextAttributes:@{NSFontAttributeName:[UIFont   systemFontOfSize:30],NSForegroundColorAttributeName:[UIColor blueColor]}   forState:UIControlStateSelected];
    
    NSArray* arrayMY = [NSArray arrayWithObjects:myFind, myVideo, nav1, myFriends, nav, nil];
    
    //将分栏视图控制器管理数组赋值
    tbController.viewControllers = arrayMY;
    
    //将分栏控制器作为根视图的控制器
    self.window.rootViewController = tbController;
    

    
    //设置选中的视图控制器的索引
    //通过索引来确定显示哪一个控制器
    tbController.selectedIndex = 4;
    
    
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
