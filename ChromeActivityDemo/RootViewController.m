//
//  RootViewController.m
//  ChromeActivityDemo
//
//  Created by Alex Robinson on 19/10/12.
//  Copyright (c) 2012 Alex Robinson. All rights reserved.
//

#import "RootViewController.h"
#import "ARChromeActivity.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	
	UIButton *showActivitiesButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
	[showActivitiesButton.titleLabel setFont:[UIFont systemFontOfSize:22.0f]];
	[showActivitiesButton setTitle:@"Show Activities" forState:UIControlStateNormal];
	[showActivitiesButton addTarget:self action:@selector(showActivities:) forControlEvents:UIControlEventTouchUpInside];
	
	[showActivitiesButton sizeToFit];
	
	CGRect frame = showActivitiesButton.frame;
	
	frame.origin.x = floor(self.view.frame.size.width/2 - frame.size.width/2);
	frame.origin.y = floor(self.view.frame.size.height * 0.25);
	
	[showActivitiesButton setFrame:frame];
	
	[self.view addSubview:showActivitiesButton];
}

- (void)showActivities:(id)sender {
	
	NSURL *urlToShare = [NSURL URLWithString:@"https://github.com/alextrob/ARChromeActivity"];
	NSArray *activityItems = [NSArray arrayWithObject:urlToShare];
	
	ARChromeActivity *chromeActivity = [[ARChromeActivity alloc] init];
    
    // If you register the Chrome URL scheme in your Info.plist, ARChrome activity can also be initialized like this:
//    ARChromeActivity *chromeActivity = [[ARChromeActivity alloc] initWithCallbackURL:[NSURL URLWithString:@"my-app-callback://"]];
    
    // Extra properties you can set:
//    [chromeActivity setActivityTitle:@"Open in Chrome"];
//    [chromeActivity setCallbackSource:@"Demo"];
    
	NSArray *applicationActivities = [NSArray arrayWithObject:chromeActivity];
	
	UIActivityViewController *activityVC = [[UIActivityViewController alloc] initWithActivityItems:activityItems applicationActivities:applicationActivities];
	
	[self presentViewController:activityVC animated:YES completion:nil];
}

@end
