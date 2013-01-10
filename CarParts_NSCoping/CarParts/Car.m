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

- (id)copyWithZone:(NSZone *)zone
{
    // Car对象的复制会稍微复杂一点
    Car *carCopy;
    carCopy = [[[self class] allocWithZone:zone] init];
    
    // 复制引擎
    Engine *engineCopy;
    engineCopy = [[engine copy] autorelease];
    carCopy.engine = engineCopy;
    
    // 复制轮胎
    for (int i = 0; i < 4; i++) 
    {
        Tire *tireCopy;
        tireCopy = [[self tireAtIndex:i] copy];
        [tireCopy autorelease];
        
        [tireCopy setTire:tireCopy atIndex:i];
    }
    
    return carCopy;
}

@end
