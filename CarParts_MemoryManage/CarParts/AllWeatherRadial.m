//
//  AllWeatherRadial.m
//  CarParts
//
//  Created by Wang Bob on 12-7-6.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "AllWeatherRadial.h"

@implementation AllWeatherRadial

@synthesize rainHanding;
@synthesize snowHanding;

- (id)init
{
    if (self = [super init]) 
    {
        rainHanding = 23.7;
        snowHanding = 42.5;
    }
    
    return self;
}

- (NSString *) description
{
    NSString *desc;
    desc = [[NSString alloc] initWithFormat:@"AllWeatherRadial: %1.f %1.f %1.f %1.f ", [self pressure], [self treadDepth], self.rainHanding, self.snowHanding];
    return desc;
}

@end
