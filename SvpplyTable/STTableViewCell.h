//
//  STTableViewCell.h
//  SvpplyTable
//
//  Created by Anonymous on 13-8-13.
//  Copyright (c) 2013年 Minqian Liu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "STCategory.h"

@interface STTableViewCell : UITableViewCell
{
  UILabel *label;
  UIColor *color;
  STCategory *category;
}

@property (strong, nonatomic) STCategory *category;

- (void) setContent:(STCategory *)content;

@end
