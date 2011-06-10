//
//  CampFireAppViewController.m
//  CampFire
//
//  Created by Sean Che on 11-06-09.
//  Copyright 2011 n/a. All rights reserved.
//

#import "CampFireAppViewController.h"


@implementation CampFireAppViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (id)init
{
    self = [super init];
    if(self)
    {
        
    }
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
    UIView *view = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]];
    [view setBackgroundColor:[UIColor brownColor]];
    self.view = view;
    
    // create the view that will execute our animation
    UIImageView* campFireView = [[UIImageView alloc] initWithFrame:self.view.frame];
    
    // load all the frames of our animation
    campFireView.animationImages = [NSArray arrayWithObjects:   
                                    [UIImage imageNamed:@"campFire01.gif"],
                                    [UIImage imageNamed:@"campFire02.gif"],
                                    [UIImage imageNamed:@"campFire03.gif"],
                                    [UIImage imageNamed:@"campFire04.gif"],
                                    [UIImage imageNamed:@"campFire05.gif"],
                                    [UIImage imageNamed:@"campFire06.gif"],
                                    [UIImage imageNamed:@"campFire07.gif"],
                                    [UIImage imageNamed:@"campFire08.gif"],
                                    [UIImage imageNamed:@"campFire09.gif"],
                                    [UIImage imageNamed:@"campFire10.gif"],
                                    [UIImage imageNamed:@"campFire11.gif"],
                                    [UIImage imageNamed:@"campFire12.gif"],
                                    [UIImage imageNamed:@"campFire13.gif"],
                                    [UIImage imageNamed:@"campFire14.gif"],
                                    [UIImage imageNamed:@"campFire15.gif"],
                                    [UIImage imageNamed:@"campFire16.gif"],
                                    [UIImage imageNamed:@"campFire17.gif"], nil];
    
    campFireView.animationDuration = 1.5;
    campFireView.animationRepeatCount = 0;
    [campFireView startAnimating];
    
    UIButton *infoButton = [UIButton buttonWithType:UIButtonTypeInfoLight];
    infoButton.frame = CGRectMake(290.0f, 420.0f, 30.0f, 30.0f);
    
    
    [view addSubview:campFireView];
    [view insertSubview:infoButton aboveSubview:campFireView];
    
//    [infoButton release];
    [view release];
    
    
}

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
