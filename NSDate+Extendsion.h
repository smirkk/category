//
//  NSDate+Extendsion.h
//  微博01-主框架搭建
//
//  Created by apple on 15/7/1.
//  Copyright (c) 2015年 TY. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NSDate (Extendsion)

/**
 * 判断该日期是否为今年内
 */
- (BOOL) isThisYear;

/**
 * 判断该日期是否为昨天
 */

- (BOOL) isYesterday;

/**
 * 判断该日期是否为今天
 */
- (BOOL) isToday;

@end
