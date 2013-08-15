//
//  STAppDelegate.h
//  SvpplyTable
//
//  Created by Anonymous on 13-8-13.
//  Copyright (c) 2013年 Minqian Liu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "STTableViewController.h"

@interface STAppDelegate : UIResponder <UIApplicationDelegate>
{
  STTableViewController *viewController;
}

@property (nonatomic, strong) UIWindow *window;
@property (nonatomic, strong) STTableViewController *viewController;

@end
