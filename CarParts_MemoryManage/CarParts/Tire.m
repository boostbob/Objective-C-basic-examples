//
//  Tire.m
//  CarParts
//
//  Created by Wang Bob on 12-7-6.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "Tire.h"

@implementation Tire

- (id)init
{
    if (self = [super init]) 
    {
        pressure = 34.0;
        treadDepth = 20.0;
    }
    
    return self;
}

- (void) setPressure:(float)p
{
    pressure = p;
}

- (float)pressure
{
    return pressure;
}

- (void)setTreadDepth:(float)td
{
    treadDepth = td;
}

- (float)treadDepth
{
    return treadDepth;
}

- (NSString *) description
{
    NSString *desc;
    desc = [NSString stringWithFormat:@"Tire: Pressure: %1.f TreadDepth: %1.f", pressure, treadDepth];
    return desc;
}

@end