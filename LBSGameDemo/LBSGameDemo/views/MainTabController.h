//
//  MainTabController.h
//  LBSGameDemo
//
//  Created by Sidney on 12-9-21.
//  Copyright (c) 2012年 Sidney. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SingletonMacro.h"

@interface MainTabController : UITabBarController

SYNTHESIZE_SINGLETON_FOR_CLASS_DECLARE(MainTabController)

- (void) chatToFriendByID:(NSNumber *)userId;

@end
