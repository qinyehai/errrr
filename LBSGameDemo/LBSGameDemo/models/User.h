//
//  User.h
//  LBSGameDemo
//
//  Created by Sidney on 12-9-24.
//  Copyright (c) 2012年 Sidney. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject

@property (nonatomic) NSNumber *userId;
@property (nonatomic) NSString *userName;
@property (nonatomic) NSNumber *level;
@property (nonatomic) NSNumber *hp;
@property (nonatomic) NSNumber *mp;
@property (nonatomic) NSNumber *exp;
@property (nonatomic) NSMutableArray *equipments;
@property (nonatomic) NSMutableArray *items;
@property (nonatomic) NSMutableArray *cimelias;

@end
