//
//  NSStringExt.m
//  NSStringNumberConvenience
//
//  Created by Wang Bob on 12-7-8.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "NSStringExt.h"

@implementation NSString (NumberConvenience)

- (id)init
{
    if (self = [super init]) 
    {
        // Initialization code here.
    }
    
    return self;
}

- (NSNumber *) mylengthAsNumber
{
    NSUInteger len = [self length];
    return [NSNumber numberWithUnsignedInteger:len];
}

@end
