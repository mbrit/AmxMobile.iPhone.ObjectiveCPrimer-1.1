//
//  Foo.m
//  ObjectiveCPrimer
//
//  Created by Matthew Baxter-Reynolds on 07/08/2010.
//  Copyright (c) 2010 AMX Software Ltd. All rights reserved.
//

#import "Foo.h"


@implementation Foo

-(NSString *)doMagic
{
	// return a constant string...
	return @"Hello, world.";
}

-(NSString *)doMoreMagic:(NSString *)theName
{
	// format a string using placeholders...
	return [NSString stringWithFormat:@"Hello, '%@'.", theName];
}

-(NSString *)doYetMoreMagic:(NSString *)theName barCount:(int)theBarCount
{
	// take the result of doMoreMagic... and build a long string...
	NSString *magicString = [self doMoreMagic:theName];
    
	// build a string...
	NSMutableString *builder = [NSMutableString string];
	for(int index = 0; index < theBarCount; index++)
	{
		if(builder.length > 0)
			[builder appendString:@"..."];
		[builder appendString:magicString];
	}
	
	// return...
	return builder;
}

-(void)dealloc
{
	NSLog(@"Foo deallocated...");
	[super dealloc]; // call the parent class' dealloc…
}

@end
