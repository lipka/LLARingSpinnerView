//
//  LLAViewController.m
//  LLARingSpinnerView
//
//  Created by Lukas Lipka on 19/07/14.
//  Copyright (c) 2014 Lukas Lipka. All rights reserved.
//

#import "LLAViewController.h"
#import <LLARingSpinnerView/LLARingSpinnerView.h>

@interface LLAViewController ()

@property (nonatomic, strong) LLARingSpinnerView *spinnerView;

@end

@implementation LLAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

	self.spinnerView = [[LLARingSpinnerView alloc] initWithFrame:CGRectZero];
    self.spinnerView.bounds = CGRectMake(0, 0, 40, 40);
    self.spinnerView.tintColor = [UIColor colorWithRed:215.f/255 green:49.f/255 blue:69.f/255 alpha:1];
    self.spinnerView.center = CGPointMake(CGRectGetMidX(self.view.bounds), CGRectGetMidY(self.view.bounds));
    [self.view addSubview:self.spinnerView];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];

    [self.spinnerView startAnimating];
}

@end
