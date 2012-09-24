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
        self.viewControllers = self.viewControllerArray;
    }
    return self;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
            // Custom initialization
        self.viewControllers = self.viewControllerArray;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
        // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
        // Dispose of any resources that can be recreated.
}

#pragma mark view switch control function

- (void)chatToFriendByID:(NSNumber *)userId
{
    [self setSelectedIndex:1];
}

#pragma mark views getter

- (ActivityViewController *) activityViewController
{
    if (!_activityViewController) {
        _activityViewController = [[ActivityViewController alloc] init];
        _activityViewController.title = NSLocalizedStringFromTable(@"ActivityViewTitle", @"Strings", nil);
    }
    return _activityViewController;
}

- (WorldViewController *) worldViewController
{
    if (!_worldViewController) {
        _worldViewController = [[WorldViewController alloc] init];
        _worldViewController.title = NSLocalizedStringFromTable(@"WorldViewTitle", @"Strings", nil);
    }
    return _worldViewController;
}

- (HomeViewController *) homeViewController
{
    if (!_homeViewController) {
        _homeViewController = [[HomeViewController alloc] init];
        _homeViewController.title = NSLocalizedStringFromTable(@"HomeViewTitle", @"Strings", nil);
    }
    return _homeViewController;
}

- (ChatViewController *) chatViewController
{
    if (!_chatViewController) {
        _chatViewController = [ChatViewController instance];
        _chatViewController.title = NSLocalizedStringFromTable(@"ChatViewTitle", @"Strings", nil);
    }
    return _chatViewController;
}

- (FriendsViewController *) friendsViewController
{
    if (!_friendsViewController) {
        _friendsViewController = [[FriendsViewController alloc] init];
        _friendsViewController.title = NSLocalizedStringFromTable(@"FriendsViewTitle", @"Strings", nil);
    }
    return _friendsViewController;
}

- (NSArray *) viewControllerArray
{
    if (!_viewControllerArray) {
        _viewControllerArray = @[self.activityViewController, self.worldViewController, self.homeViewController, self.chatViewController, self.friendsViewController];
    }
    return _viewControllerArray;
}


@end
