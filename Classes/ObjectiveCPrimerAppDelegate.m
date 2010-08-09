//
//  ObjectiveCPrimerAppDelegate.m
//  ObjectiveCPrimer
//
//  Created by Matthew Baxter-Reynolds on 07/08/2010.
//  Copyright (c) 2010 AMX Software Ltd. All rights reserved.
//


#import "ObjectiveCPrimerAppDelegate.h"
#import "ObjectiveCPrimerViewController.h"
#import "Foo.h"

@implementation ObjectiveCPrimerAppDelegate

@synthesize window;
@synthesize viewController;
@synthesize myFoo;

-(id)init
{ 
	if(self = [super init])
	{
		// create it...
		Foo *theFoo = [[Foo alloc] init]; 
		NSLog(@"theFoo's retain count: %d", theFoo.retainCount);
        
		// set it...
		self.myFoo = theFoo;
		NSLog(@"theFoo's retain count: %d", theFoo.retainCount);
		
		// we've handed it over, release the original...
		[theFoo release];
		NSLog(@"theFoo's retain count: %d", theFoo.retainCount);
	}
	
	// return...
	return self;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

	// call doYetMoreMagic...
	NSLog([self.myFoo doYetMoreMagic:@"Ellie" barCount:5]); 
    
    return YES;
}

- (void)applicationWillTerminate:(UIApplication *)application {

    // Save data if appropriate.
}

- (void)dealloc {

    [window release];
    [viewController release];
    [super dealloc];
}

@end

