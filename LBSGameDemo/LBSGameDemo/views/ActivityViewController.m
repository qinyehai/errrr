//
//  ActivityViewController.m
//  LBSGameDemo
//
//  Created by Sidney on 12-9-21.
//  Copyright (c) 2012年 Sidney. All rights reserved.
//

#import "ActivityViewController.h"

#import "BaseTitleView.h"

@interface ActivityViewController ()

@property (nonatomic) BaseTitleView *titleView;

@end

@implementation ActivityViewController

- (BaseTitleView *)titleView
{
    if (!_titleView) {
        _titleView = [[BaseTitleView alloc] init];
        
            }
    return _titleView;
}



- (id)init
{
    self = [super init];
    if (self) {
        [self.view addSubview:self.titleView];
    }
    return self;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        [self.view addSubview:self.titleView];
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

@end
