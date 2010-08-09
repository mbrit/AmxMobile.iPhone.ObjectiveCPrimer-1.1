//
//  Foo.h
//  ObjectiveCPrimer
//
//  Created by Matthew Baxter-Reynolds on 07/08/2010.
//  Copyright (c) 2010 AMX Software Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Foo : NSObject {

}

// parameterless method...
-(NSString *)doMagic;

// method with one parameter...
-(NSString *)doMoreMagic:(NSString *)theName;

// method with two parameters...
-(NSString *)doYetMoreMagic:(NSString *)theName barCount:(int)theBarCount;

@end
