//
//  LLARingSpinnerViewTests.m
//  LLARingSpinnerViewTests
//
//  Created by Lukas Lipka on 19/07/14.
//  Copyright (c) 2014 Lukas Lipka. All rights reserved.
//

#import <LLARingSpinnerView/LLARingSpinnerView.h>

SpecBegin(LLARingSpinnerView)

it(@"should fit in bounds", ^{
    LLARingSpinnerView *spinnerView = [[LLARingSpinnerView alloc] initWithFrame:CGRectZero];
    spinnerView.frame = CGRectMake(0, 0, 40, 40);
    spinnerView.lineWidth = 5.0f;
    spinnerView.backgroundColor = [UIColor whiteColor];

    expect(spinnerView).to.to.haveValidSnapshot();
});

describe(@"tintColor", ^{
    it(@"should have default tint color", ^{
        LLARingSpinnerView *spinnerView = [[LLARingSpinnerView alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];
        spinnerView.backgroundColor = [UIColor whiteColor];

        expect(spinnerView).to.haveValidSnapshot();
    });

    it(@"should change tint color", ^{
        LLARingSpinnerView *spinnerView = [[LLARingSpinnerView alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];
        spinnerView.backgroundColor = [UIColor whiteColor];
        spinnerView.tintColor = [UIColor greenColor];

        expect(spinnerView).to.haveValidSnapshot();
    });
});

describe(@"isAnimating", ^{
    it(@"should reflect animation status", ^{
        LLARingSpinnerView *spinnerView = [[LLARingSpinnerView alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];

        expect(spinnerView.isAnimating).to.beFalsy();

        [spinnerView startAnimating];

        expect(spinnerView.isAnimating).to.beTruthy();

        [spinnerView stopAnimating];

        expect(spinnerView.isAnimating).to.beFalsy();
    });

});

describe(@"lineWidth", ^{
    it(@"should have default line width", ^{
        LLARingSpinnerView *spinnerView = [[LLARingSpinnerView alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];
        spinnerView.backgroundColor = [UIColor whiteColor];

        expect(spinnerView).to.haveValidSnapshot();
    });

    it(@"should change line width", ^{
        LLARingSpinnerView *spinnerView = [[LLARingSpinnerView alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];
        spinnerView.lineWidth = 5.0f;
        spinnerView.backgroundColor = [UIColor whiteColor];

        expect(spinnerView).to.haveValidSnapshot();
    });
});

SpecEnd
