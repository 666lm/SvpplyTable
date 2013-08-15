//
//  STCategory.m
//  SvpplyTable
//
//  Created by Anonymous on 13-8-13.
//  Copyright (c) 2013年 Minqian Liu. All rights reserved.
//

#import "STCategory.h"

@implementation STCategory

@synthesize name, URLString, colorHex, borderColorHex;

-(id)initWithJSON:(id)json
{
  NSDictionary *jsonDict = (NSDictionary *)json;
  self = [super init];
  if (self) {
    self.name = [jsonDict objectForKey:@"name"];
    self.URLString = [jsonDict objectForKey:@"url"];
    self.colorHex = [jsonDict objectForKey:@"text_color"];
    self.borderColorHex = [jsonDict objectForKey:@"border_color"];
  }
  return self;
}

@end
