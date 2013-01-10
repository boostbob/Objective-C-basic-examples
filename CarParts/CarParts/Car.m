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
    self = [super init];

    if (self) {
        // Initialization code here.
    }
    
    return self;
}

- (void) setEngine:(Engine *)newEngine
{
    engine = newEngine;
}

- (Engine *)engine
{
    return engine;
}

- (void) setTire:(id)tire atIndex:(int)index
{
    if(index < 0 || index > 3)
    {
        NSLog(@"bad index (%d) in setEngine:atIndex", index);
        exit(1);
    }
    
    tires[index] = tire;
}

- (Tire *) tireAtIndex:(int)index
{
    if(index < 0 || index > 3)
    {
        NSLog(@"bad index (%d) tireAtIndex", index);
        exit(1);
    }
    
    return tires[index];
}

- (void) print
{
    NSLog(@"%@", tires[0]);
    NSLog(@"%@", tires[1]);
    NSLog(@"%@", tires[2]);
    NSLog(@"%@", tires[3]);
    NSLog(@"%@", engine);
}

@end
