//
//  CampFireAppViewController.m
//  CampFire
//
//  Created by Sean Che on 11-06-09.
//  Copyright 2011 n/a. All rights reserved.
//

#import "CampFireAppViewController.h"
#import "FlipsideViewController.h"
#import "MainViewController.h"
@implementation CampFireAppViewController

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
    [navigationBar release];
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
    view = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]];
    [view setBackgroundColor:[UIColor brownColor]];
    self.view = view;
    [view release];    
    
    mainViewController = [[MainViewController alloc] init]; 
    flipsideViewController = [[FlipsideViewController alloc] init];
    
    [self.view addSubview:mainViewController.view];
    
    infoButton = [UIButton buttonWithType:UIButtonTypeInfoLight];
    infoButton.frame = CGRectMake(290.0f, 420.0f, 30.0f, 30.0f);
    [infoButton addTarget:self action:@selector(toggleView) forControlEvents:UIControlEventTouchUpInside];

	navigationBar = [[UINavigationBar alloc] initWithFrame:CGRectMake(0.0, 0.0, 320.0, 44.0)];
	navigationBar.barStyle = UIBarStyleBlackOpaque;

	UIBarButtonItem *buttonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(toggleView2)];
    UINavigationItem *navigationItem = [[UINavigationItem alloc] initWithTitle:@"Bonfire"];
	navigationItem.rightBarButtonItem = buttonItem;
	[navigationBar pushNavigationItem:navigationItem animated:NO];
    [navigationItem release];
    [buttonItem release];
    
    [self.view insertSubview:infoButton aboveSubview:mainViewController.view];
    
    //
//#if 1   
//    [self.view addSubview:campFireView];
//    [self.view insertSubview:infoButton aboveSubview:campFireView];
//#else
//    FlipsideViewController *flipsideViewController = [[FlipsideViewController alloc] init];
//    [view addSubview:flipsideViewController.view];
//#endif
}

- (void)toggleView2
{
    
}
- (void)toggleView
{
	[UIView beginAnimations:nil context:NULL];
	[UIView setAnimationDuration:1];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:self.view cache:YES];
	
    
	[flipsideViewController viewWillAppear:YES];
	[mainViewController viewWillDisappear:YES];
	[mainViewController.view removeFromSuperview];
    [infoButton removeFromSuperview];
    [self.view addSubview:flipsideViewController.view];
	[self.view insertSubview:navigationBar aboveSubview:flipsideViewController.view];
	[mainViewController viewDidDisappear:YES];
	[flipsideViewController viewDidAppear:YES];
        
	[UIView commitAnimations];
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
