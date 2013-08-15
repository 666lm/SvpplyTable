//
//  STCategory.h
//  SvpplyTable
//
//  Created by Anonymous on 13-8-13.
//  Copyright (c) 2013年 Minqian Liu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface STCategory : NSObject
{
  NSString* name;
	NSString* URLString;
	NSString* colorHex;
	NSString* borderColorHex;
}

@property(strong, nonatomic) NSString* borderColorHex;
@property(strong, nonatomic) NSString* colorHex;
@property(strong, nonatomic) NSString* URLString;
@property(strong, nonatomic) NSString* name;

-(id)initWithJSON:(id)json;

@end
