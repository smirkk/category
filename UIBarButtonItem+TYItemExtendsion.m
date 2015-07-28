//
//  UIBarButtonItem+TYItemExtendsion.m
//  微博01-主框架搭建
//
//  Created by fty on 15-6-5.
//  Copyright (c) 2015年 TY. All rights reserved.
//

#import "UIBarButtonItem+TYItemExtendsion.h"
#import "UIView+TYStructExtendsion.h"

@implementation UIBarButtonItem (TYItemExtendsion)

+ (UIBarButtonItem *) itemWithTarget:(id)target Action:(SEL)action image:(NSString *)image highImage:(NSString *)highImage
{
    UIButton *btn = [[UIButton alloc] init];
    [btn setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [btn setBackgroundImage:[UIImage imageNamed:highImage] forState:UIControlStateHighlighted];
    btn.size = btn.currentBackgroundImage.size;
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return [[UIBarButtonItem alloc] initWithCustomView:btn];
}
@end
