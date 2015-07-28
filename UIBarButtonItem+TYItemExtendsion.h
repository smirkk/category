//
//  UIBarButtonItem+TYItemExtendsion.h
//  微博01-主框架搭建
//
//  Created by fty on 15-6-5.
//  Copyright (c) 2015年 TY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (TYItemExtendsion)
+ (UIBarButtonItem *) itemWithTarget:(id)target Action:(SEL)action image:(NSString *)image highImage:(NSString *)highImage;
@end
