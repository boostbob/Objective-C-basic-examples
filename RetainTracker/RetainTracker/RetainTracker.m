//
//  RetainTracker.m
//  RetainTracker
//
//  Created by Wang Bob on 12-7-8.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "RetainTracker.h"

@implementation RetainTracker

- (id)init
{
    if (self = [super init]) 
    {
        NSLog(@"init: retain count of %lu.", [self retainCount]);
    }
    
    return self;
}

- (void)dealloc
{
    NSLog(@"dealloc called.Bye bye.");
    [super dealloc];
}
@end
