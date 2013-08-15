//
//  STTableViewCell.m
//  SvpplyTable
//
//  Created by Anonymous on 13-8-13.
//  Copyright (c) 2013年 Minqian Liu. All rights reserved.
//

#import "STTableViewCell.h"
#import "UIColor+HexString.h"

@implementation STTableViewCell

@synthesize category;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self){}
    return self;
}

- (void) setContent:(STCategory *)content
{
  self.category = content;
  
  [self.textLabel setTextAlignment:NSTextAlignmentCenter];
  self.textLabel.textColor = [UIColor colorWithHexString:content.colorHex];
  [self.textLabel setText:content.name];
  [self.textLabel setFont:[UIFont boldSystemFontOfSize:20]];
  [self.textLabel setBackgroundColor:[UIColor clearColor]];
  [self.contentView setBackgroundColor:[UIColor blackColor]];
}

@end
