//
//  BaseTitleView.m
//  LBSGameDemo
//
//  Created by Sidney on 12-9-22.
//  Copyright (c) 2012年 Sidney. All rights reserved.
//

#import "BaseTitleView.h"

@implementation BaseTitleView

- (id)init
{
    self = [super init];
    if (self) {
        self.frame = CGRectMake(0, 0, 320, 44);
        self.backgroundColor = [UIColor grayColor];
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.frame = CGRectMake(0, 0, 320, 44);
        self.backgroundColor = [UIColor grayColor];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
