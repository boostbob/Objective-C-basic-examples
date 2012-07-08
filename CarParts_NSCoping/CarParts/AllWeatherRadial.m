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

- (id)copyWithZone:(NSZone *)zone
{
    AllWeatherRadial *tireCopy;
    // 直接调用超类的完成超类规模的构造
    // 超类使用的[self class]因而知道这里是对AllWeatherRadial对象的allocWithZone操作
    // copyWithZone
    tireCopy = [super copyWithZone:zone];
    [tireCopy setRainHanding:rainHanding];
    [tireCopy setSnowHanding:snowHanding];
    
    return tireCopy;
}

@end
