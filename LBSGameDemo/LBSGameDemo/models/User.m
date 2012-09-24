//
//  User.m
//  LBSGameDemo
//
//  Created by Sidney on 12-9-24.
//  Copyright (c) 2012年 Sidney. All rights reserved.
//

#import "User.h"

@implementation User

- (id)init
{
    self = [super init];
    if (self) {
        _userId = [[NSNumber alloc] init];
        _userName = [[NSString alloc] init];
        _level = [[NSNumber alloc] init];
        _hp = [[NSNumber alloc] init];
        _mp = [[NSNumber alloc] init];
        _exp = [[NSNumber alloc] init];
        _equipments = [[NSMutableArray alloc] init];
        _items = [[NSMutableArray alloc] init];
        _cimelias = [[NSMutableArray alloc] init];        
    }
    return self;
}

@end
