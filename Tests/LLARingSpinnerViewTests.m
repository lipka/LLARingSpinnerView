//
//  LLARingSpinnerViewTests.m
//  LLARingSpinnerViewTests
//
//  Created by Lukas Lipka on 19/07/14.
//  Copyright (c) 2014 Lukas Lipka. All rights reserved.
//

#import <LLARingSpinnerView/LLARingSpinnerView.h>

SpecBegin(LLARingSpinnerView)

__block UIWindow *window;

beforeEach(^{
    window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
});

describe(@"isAnimating", ^{
    it(@"should reflect animation status", ^{
        UIViewController *viewController = [UIViewController new];

        LLARingSpinnerView *spinnerView = [[LLARingSpinnerView alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];
        [viewController.view addSubview:spinnerView];

        window.rootViewController = viewController;
        [window makeKeyAndVisible];

        expect(spinnerView.isAnimating).to.beFalsy();

        [spinnerView startAnimating];
        expect(spinnerView.isAnimating).to.beTruthy();

        [spinnerView stopAnimating];
        expect(spinnerView.isAnimating).to.beFalsy();
    });

});

SpecEnd
