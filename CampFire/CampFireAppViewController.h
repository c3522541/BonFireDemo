//
//  CampFireAppViewController.h
//  CampFire
//
//  Created by Sean Che on 11-06-09.
//  Copyright 2011 n/a. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FlipsideViewController.h"
#import "MainViewController.h"
@interface CampFireAppViewController : UIViewController {
    UIButton *infoButton;
    UINavigationBar *navigationBar;
    UIView *view;
    FlipsideViewController *flipsideViewController;
    MainViewController *mainViewController;
}

@property (nonatomic, assign) UIButton *infoButton;

- (void)toggleView;
@end
