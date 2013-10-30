//
//  AppDelegate.h
//  FailedBanks
//
//  Created by Chao Xu on 13-10-29.
//  Copyright (c) 2013年 Chao Xu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : NSObject <UIApplicationDelegate>{
    UIWindow *window;
    UINavigationController *_navController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic,retain)IBOutlet UINavigationController *navController;

@end
