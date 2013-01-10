//
//  Garage.m
//  KVC
//
//  Created by Wang Bob on 12-7-9.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "Garage.h"

@implementation Garage

@synthesize name;
@synthesize cars;

- (id)init
{
    if ([super init]) 
    {
        // Initialization code here.
    }
    
    return self;
}

- (void)dealloc
{
    [name release];
    [cars release];
    [super dealloc];
}

- (void)addCar:(Car *)car
{
    if(cars == nil)
    {
        cars = [[NSMutableArray alloc] init];
    }
    
    [cars addObject:car];
}

- (void)print
{
    NSLog(@"%@", name);
    
    for(Car *car in cars)
    {
        NSLog(@"%@", car);
    }
}

@end
