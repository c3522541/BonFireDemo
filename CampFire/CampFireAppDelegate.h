//
//  CampFireAppDelegate.h
//  CampFire
//
//  Created by Sean Che on 11-06-09.
//  Copyright 2011 n/a. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CampFireAppViewController.h"
@interface CampFireAppDelegate : NSObject <UIApplicationDelegate> {
    CampFireAppViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@end
