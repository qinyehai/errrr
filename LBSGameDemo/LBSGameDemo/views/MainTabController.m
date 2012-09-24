    //
    //  MainTabController.m
    //  LBSGameDemo
    //
    //  Created by Sidney on 12-9-21.
    //  Copyright (c) 2012年 Sidney. All rights reserved.
    //

#import "MainTabController.h"

#import "ActivityViewController.h"
#import "WorldViewController.h"
#import "HomeViewController.h"
#import "ChatViewController.h"
#import "FriendsViewController.h"

@interface MainTabController ()

@property (nonatomic) ActivityViewController *activityViewController;
@property (nonatomic) WorldViewController    *worldViewController;
@property (nonatomic) HomeViewController     *homeViewController;
@property (nonatomic) ChatViewController     *chatViewController;
@property (nonatomic) FriendsViewController  *friendsViewController;

@property (nonatomic) NSArray                *viewControllerArray;

@end

@implementation MainTabController

SYNTHESIZE_SINGLETON_FOR_CLASS(MainTabController)

- (id)init
{
    self = [super init];
    if (self) {
        _activityViewController = [[ActivityViewController alloc] init];
        _activityViewController.title = NSLocalizedStringFromTable(@"ActivityViewTitle", @"Strings", nil);
        _worldViewController = [[WorldViewController alloc] init];
        _worldViewController.title = NSLocalizedStringFromTable(@"WorldViewTitle", @"Strings", nil);
        _homeViewController = [[HomeViewController alloc] init];
        _homeViewController.title = NSLocalizedStringFromTable(@"HomeViewTitle", @"Strings", nil);
        _chatViewController = [ChatViewController instance];
        _chatViewController.title = NSLocalizedStringFromTable(@"ChatViewTitle", @"Strings", nil);
        _friendsViewController = [[FriendsViewController alloc] init];
        _friendsViewController.title = NSLocalizedStringFromTable(@"FriendsViewTitle", @"Strings", nil);
        
        _viewControllerArray = @[self.activityViewController, self.worldViewController, self.homeViewController, self.chatViewController, self.friendsViewController];
        
        self.viewControllers = _viewControllerArray;
    }
    return self;
}

#pragma mark view switch control function

- (void)chatToFriendByID:(NSNumber *)userId
{
    
}

@end
