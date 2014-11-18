//
//  LLARingSpinnerView.h
//  LLARingSpinnerView
//
//  Created by Lukas Lipka on 05/04/14.
//  Copyright (c) 2014 Lukas Lipka. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LLARingSpinnerView : UIView

@property (nonatomic) CGFloat lineWidth;
@property (nonatomic) BOOL hidesWhenStopped;
@property (nonatomic, strong) CAMediaTimingFunction *timingFunction;
@property (nonatomic, readonly) BOOL isAnimating;

- (void)startAnimating;
- (void)stopAnimating;

@end
