//
//  RBHamburgerViewController.m
//  RBHamburger
//
//  Created by ChristianEnevoldsen on 13/08/14.
//  Copyright (c) 2014 Reversebox. All rights reserved.
//

#import "RBHamburgerViewController.h"
#import "RBHamburgerSegue.h"

@interface RBHamburgerViewController ()

@end

@implementation RBHamburgerViewController {
    BOOL _hamburgerInProgress;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue isKindOfClass:[RBHamburgerSegue class]]) {
        [(RBHamburgerSegue *)segue setUnwinding:_hamburgerInProgress];
        _hamburgerInProgress = !_hamburgerInProgress;
    }
}


@end
