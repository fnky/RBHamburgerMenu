//
//  RBHamburgerSegue.m
//  RBHamburger
//
//  Created by ChristianEnevoldsen on 13/08/14.
//  Copyright (c) 2014 Reversebox. All rights reserved.
//

#import "RBHamburgerSegue.h"

@implementation RBHamburgerSegue

- (id)initWithIdentifier:(NSString *)identifier source:(UIViewController *)source destination:(UIViewController *)destination {
    self = [super initWithIdentifier:identifier source:source destination:destination];
    if (self) {
    }
    return self;
}

- (void)perform {
    
    UIViewController *destinationController = (UIViewController *)self.destinationViewController;
    UIViewController *sourceController = (UIViewController *)self.sourceViewController;
    UIView *destView = destinationController.view;
    CGFloat offset_x = sourceController.view.frame.size.width * 0.8;
    CGRect destViewFrame;
    CGRect navBarFrame = sourceController.navigationController.navigationBar.frame;

    if ( !self.isUnwinding ) {
        destView.clipsToBounds = true;
        [sourceController.view insertSubview:destView atIndex:0];
        destViewFrame = CGRectOffset(destView.frame, -offset_x, 0);
        destViewFrame.size.width = offset_x;
        destView.frame = destViewFrame;
        navBarFrame.origin.x = offset_x;

        [UIView animateWithDuration:0.3 animations:^{
            sourceController.view.frame = CGRectOffset(sourceController.view.frame, offset_x, 0);
            sourceController.navigationController.navigationBar.frame = navBarFrame;
        }];

    } else {
        navBarFrame.origin.x = 0;
        [UIView animateWithDuration:0.3 animations:^{
            sourceController.view.frame = CGRectOffset(sourceController.view.frame, -offset_x, 0);
            sourceController.navigationController.navigationBar.frame = navBarFrame;
        } completion:^(BOOL finished) {
            destView.clipsToBounds = false;
            [destView removeFromSuperview];
        }];

    }
}

@end
