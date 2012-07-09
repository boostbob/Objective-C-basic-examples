//
//  Car.m
//  KVC
//
//  Created by Wang Bob on 12-7-9.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "Car.h"

@implementation Car
@synthesize name;
@synthesize mileage;

- (void) dealloc
{
    [name release];
}

- (NSString *)description
{
    NSString *description;
    description = [NSString stringWithFormat:@"%@ with %.2f miles", name, mileage];
    return description;
}
@end
