//
//  UIColor+HexString.m
//  SvpplyTable
//
//  Created by Anonymous on 13-8-14.
//  Copyright (c) 2013年 Minqian Liu. All rights reserved.
//

#import "UIColor+HexString.h"

@implementation UIColor (HexString)

+ (UIColor *) colorWithHexString: (NSString *) stringToConvert
{
  NSString *cString = [[stringToConvert stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString]; //去掉前后空格换行符
  
  // String should be 6 or 8 characters
  if ([cString length] < 6) return [UIColor redColor];
  
  // strip 0X if it appears
  if ([cString hasPrefix:@"0X"]) cString = [cString substringFromIndex:2];
  if ([cString hasPrefix:@"#"]) cString = [cString substringFromIndex:1];
  if ([cString length] != 6) return [UIColor redColor];
  // Separate into r, g, b substrings
  NSRange range;
  range.location = 0;
  range.length = 2;
  NSString *rString = [cString substringWithRange:range];
  
  range.location = 2;
  NSString *gString = [cString substringWithRange:range];
  
  range.location = 4;
  NSString *bString = [cString substringWithRange:range];
  
  // Scan values
  unsigned int r, g, b;
  [[NSScanner scannerWithString:rString] scanHexInt:&r];  //扫描16进制到int
  [[NSScanner scannerWithString:gString] scanHexInt:&g];
  [[NSScanner scannerWithString:bString] scanHexInt:&b];
  
  return [UIColor colorWithRed:((float) r / 255.0f)
                         green:((float) g / 255.0f)
                          blue:((float) b / 255.0f)
                         alpha:1.0f];
}

@end
