//
//  RBHamburgerSegue.h
//  RBHamburger
//
//  Created by ChristianEnevoldsen on 13/08/14.
//  Copyright (c) 2014 Reversebox. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RBHamburgerSegue : UIStoryboardSegue

@property (nonatomic, assign, getter=isUnwinding) BOOL unwinding;

@end
