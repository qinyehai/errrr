//
//  ChatViewController.m
//  LBSGameDemo
//
//  Created by Sidney on 12-9-21.
//  Copyright (c) 2012年 Sidney. All rights reserved.
//

#import "ChatViewController.h"

#import "ChatData.h"

#pragma mark Data Container Class

@interface ChatCacheData : NSObject

@property (nonatomic) NSMutableDictionary *chatCaches;

- (void)putID:(NSNumber *)userId content:(ChatData *)data;
- (NSMutableArray *)getDatas:(NSNumber *)userId;

@end

@implementation ChatCacheData

- (NSMutableDictionary *)chatCaches
{
    if (!_chatCaches) {
        _chatCaches = [[NSMutableDictionary alloc] init];
    }
    return _chatCaches;
}

- (void)putID:(NSNumber *)userId content:(ChatData *)data
{
    NSMutableArray *chatCacheList = nil;
    if ([[self.chatCaches allKeys] containsObject:userId]) {
        chatCacheList = [self.chatCaches objectForKey:(userId)];
    }
    else {
        chatCacheList = [[NSMutableArray alloc] init];
        [self.chatCaches setObject:chatCacheList forKey:userId];
    }
    [chatCacheList addObject:data];
}

- (NSMutableArray *)getDatas:(NSNumber *)userId
{
    if ([[self.chatCaches allKeys] containsObject:userId]) {
        return [self.chatCaches objectForKey:(userId)];
    }
    else {
        return nil;
    }
}

@end

#pragma mark ChatViewController Class

@interface ChatViewController ()

@property (nonatomic) UILabel *noChatingHint;
@property (nonatomic) BOOL isNoChating;
@property (nonatomic) NSNumber *chatToUserId;

@end

@implementation ChatViewController

SYNTHESIZE_SINGLETON_FOR_CLASS(ChatViewController)

- (UILabel *)noChatingHint
{
    if (!_noChatingHint) {
        _noChatingHint = [[UILabel alloc] init];
        _noChatingHint.frame = CGRectMake(0, 0, 320, 480 - 48);
        _noChatingHint.text = NSLocalizedStringFromTable(@"NoChating", @"Strings", nil);
        _noChatingHint.textAlignment = NSTextAlignmentCenter;
        _noChatingHint.backgroundColor = [UIColor blueColor];
    }
    return _noChatingHint;
}

- (id)init
{
    self = [super init];
    if (self) {
        _chatToUserId = nil;
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated
{
    if (self.isNoChating) {
        self.isNoChating = NO;
        [self.noChatingHint removeFromSuperview];
    }
    else {
        self.isNoChating = YES;
        [self.view addSubview:self.noChatingHint];
    }

}


@end
