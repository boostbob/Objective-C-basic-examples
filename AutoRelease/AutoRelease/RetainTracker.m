//
//  RetainTracker.m
//  AutoRelease
//
//  Created by Wang Bob on 12-7-8.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "RetainTracker.h"

@implementation RetainTracker
- (NSString *)description
{
    NSString *description;
    description = [[NSString alloc] initWithFormat: @"building description"];
    return [description autorelease];
}
@end