//
//  NSDate+Extendsion.m
//  微博01-主框架搭建
//
//  Created by apple on 15/7/1.
//  Copyright (c) 2015年 TY. All rights reserved.
//

#import "NSDate+Extendsion.h"


@implementation NSDate (Extendsion)

/**
 * 判断该日期是否为今年内
 */
- (BOOL) isThisYear
{
    // 当前日期
    NSDate *now = [NSDate date];
    NSCalendar *cal = [NSCalendar currentCalendar];
    
    NSDateComponents *nowCmp = [cal components:NSCalendarUnitYear fromDate:now];
    NSDateComponents *dateCmp = [cal components:NSCalendarUnitYear fromDate:self];
    
    return dateCmp.year == nowCmp.year;
}

/**
 * 判断该日期是否为今天
 */
- (BOOL) isToday
{
    NSDateFormatter *fmt = [[NSDateFormatter alloc] init];
    fmt.dateFormat = @"yyyy-MM-dd";
    
    NSString *nowStr = [fmt stringFromDate:[NSDate date]];
    NSString *dateStr = [fmt stringFromDate:self];
    
    return [dateStr isEqualToString:nowStr];
}

/**
 * 判断该日期是否为昨天
 */
- (BOOL) isYesterday
{
    NSDate *now = [NSDate date];
    
    NSDateFormatter *fmt = [[NSDateFormatter alloc] init];
    fmt.dateFormat = @"yyyy-MM-dd";
    
    NSString *nowStr = [fmt stringFromDate:now];
    NSString *dateStr = [fmt stringFromDate:self];

    now = [fmt dateFromString:nowStr];
    NSDate *date = [fmt dateFromString:dateStr];
    
    NSCalendar *cal = [NSCalendar currentCalendar];
    
    NSCalendarUnit unit = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay;
    NSDateComponents *cmp = [cal components:unit fromDate:date toDate:now options:0];
    
    return cmp.year == 0 && cmp.month == 0 && cmp.day == 1;
}

@end
