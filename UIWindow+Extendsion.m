//
//  UIWindow+Extendsion.m
//  微博01-主框架搭建
//
//  Created by fty on 15-6-13.
//  Copyright (c) 2015年 TY. All rights reserved.
//

#import "UIWindow+Extendsion.h"
#import "TYTabBarViewController.h"
#import "TYNewFeatureViewController.h"

@implementation UIWindow (Extendsion)

- (void) chooseWindow
{
    NSString *versionKey = @"CFBundleVersion";
    
    NSString *curVersion = [NSBundle mainBundle].infoDictionary[versionKey];
    NSString *lastVersion = [[NSUserDefaults standardUserDefaults] objectForKey:versionKey];
    
    if ([curVersion isEqualToString:lastVersion]) { // 两次版本一样
        UITabBarController *mainVc = [[TYTabBarViewController alloc] init];
        self.rootViewController = mainVc;
    }else{
        self.rootViewController = [[TYNewFeatureViewController alloc] init];
        // 保存当前版本号到沙盒
        [[NSUserDefaults standardUserDefaults] setValue:curVersion forKey:versionKey];
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
}
@end
