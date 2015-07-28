//
//  UITextView+Extendsion.m
//  微博01-主框架搭建
//
//  Created by fty on 15/7/19.
//  Copyright (c) 2015年 TY. All rights reserved.
//

#import "UITextView+Extendsion.h"

@implementation UITextView (Extendsion)

- (void) insertAttributeString:(NSAttributedString *)attrStr
{
    
    NSMutableAttributedString *attributedStr = [[NSMutableAttributedString alloc] init];
    [attributedStr appendAttributedString:self.attributedText];
    
    // 获取光标选择范围
    NSRange range = self.selectedRange;
    [attributedStr insertAttributedString:attrStr atIndex:range.location];
    self.attributedText = attributedStr;
    
    // 移动光标
    self.selectedRange = NSMakeRange(range.location + 1, 0);
}
@end
