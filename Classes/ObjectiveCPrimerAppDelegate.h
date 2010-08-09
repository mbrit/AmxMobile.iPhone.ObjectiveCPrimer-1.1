//
//  ObjectiveCPrimerAppDelegate.h
//  ObjectiveCPrimer
//
//  Created by Matthew Baxter-Reynolds on 07/08/2010.
//  Copyright (c) 2010 AMX Software Ltd. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "Foo.h"

@class ObjectiveCPrimerViewController;

@interface ObjectiveCPrimerAppDelegate : NSObject <UIApplicationDelegate> {

    UIWindow *window;
    ObjectiveCPrimerViewController *viewController;
    Foo *myFoo;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet ObjectiveCPrimerViewController *viewController;
@property (nonatomic, retain) Foo *myFoo;

@end

