//
//  Car.m
//  CarParts
//
//  Created by Wang Bob on 12-7-6.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "Car.h"

@implementation Car

- (id)init
{
    if (self = [super init]) 
    {
        tires = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 4; i++) 
        {
            [tires addObject:[NSNull null]];
        }
    }
    
    return self;
}

- (void) setEngine:(Engine *)newEngine
{
    [newEngine retain];
    engine = newEngine;
    [engine release];
}

- (Engine *)engine
{
    return engine;
}

- (void) setTire:(id)tire atIndex:(int)index
{
    [tires replaceObjectAtIndex:index withObject:tire];
}

- (Tire *) tireAtIndex:(int)index
{
    return [tires objectAtIndex:index];
}

- (void) print
{
    for (int i = 0; i < 4; i++) 
    {
        NSLog(@"%@", [self tireAtIndex:i]);
    }
    
    NSLog(@"%@", engine);
}

- (void) dealloc
{
    [engine release];
    [tires release];
    
    // 注意!!!
    [super dealloc];
}

@end
